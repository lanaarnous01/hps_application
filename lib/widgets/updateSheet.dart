
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/patients_providers.dart';
import '../models/listModel.dart';
class UpdateSheet extends StatefulWidget {
static const routeName = '/updatePatient'; 
  const UpdateSheet({super.key});

  @override
  State<UpdateSheet> createState() => _UpdateSheetState();
}

class _UpdateSheetState extends State<UpdateSheet> {
  //@override
    final _formm = GlobalKey<FormState>();
  var _edited = Patient(name: '', wardNo: '', id: null );
  var _initValues = {
    
    'name': '',
    'wardNo.': '',
  };
  var _isInit = true;


  @override
  void didChangeDependencies() {
    if (_isInit){
      final patientNamee = ModalRoute.of(context)!.settings.arguments as dynamic; //dynamic
     if (patientNamee != null)
     { _edited = Provider.of<Patients>(context, listen: false).findbyId(patientNamee);
      _initValues = {
          'name': _edited.name,
          'wardNo.': _edited.wardNo,
      };
        }
    }
    _isInit = false;

    
    super.didChangeDependencies();
  }
void _saveForm(){
  final isValid = _formm.currentState!.validate();
  if (!isValid){
    return;
  }
   _formm.currentState!.save();
   //print in console
  //  print(_edited.name);
  //  print(_edited.wardNo);

  //Adding patient in the patient list
 if (_edited.id != null ) //name
   Provider.of<Patients>(context, listen: false).updatePatient(_edited.id, _edited); //edited.name
  //else

  // {Provider.of<Patients>(context, listen: false).addPatient(_edited);}
  Navigator.of(context).pop();
}

 Widget buildName() => TextFormField(
    initialValue: _initValues['name'],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Name',
        ),
        validator: (value) {
          if (value!.isEmpty){
            return 'Please enter name';
          }
          return null;
        },
        onSaved: (value) {
      _edited = Patient(name: value, wardNo: _edited.wardNo, id: _edited.id);
        },
      );


 Widget buildWardNo() => TextFormField(
    initialValue: _initValues['wardNo.'],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Ward No.',
        ),
        validator: (value) {
          if (value!.isEmpty){
            return 'Please enter Ward Number';
          }
          return null;
        },
        onSaved: (value) {
          _edited = Patient(name: _edited.name, wardNo: value, id: _edited.id);
        },
      );
  Widget build(BuildContext context) {
    return 
    Scaffold(
        appBar: AppBar(
          title: Text('Add Patient'),
          backgroundColor: Colors.yellow,
          
        ),
        // backgroundColor: Color.fromARGB(255, 248, 85, 85),
        body: Form(
          key: _formm,
          child: ListView(padding: EdgeInsets.all(32), 
          
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(color: Colors.white10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildName(),
                   // SizedBox(height: 50),
                //    buildID(),
                    SizedBox(height: 50),
                 //   buildBirthday(),
                    SizedBox(height: 50),
                    buildWardNo(),
                    SizedBox(height: 50),
                     IconButton(onPressed: _saveForm, icon: Icon(Icons.add))
                  ],
                ),
              ),
            ),
          ]),
        ));
    // IconButton(
    //                         onPressed: (() {
    //                          showModalBottomSheet(context: context, 
    //                          isScrollControlled: true,
    //                          builder: ((BuildContext context) {
    //                            BorderRadius.only(topLeft: Radius.circular(25));
                               
    //                            return Padding(
                                
    //                              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),    //const EdgeInsets.all(10),
    //                              child: 
    //                               Form(
                                  
    //                                 child: 
    //                                 Column(
    //                                   children: [
    //                                     TextFormField(
    //                             decoration: InputDecoration(labelText: ('Heart rate')),
    //                             keyboardType: TextInputType.number,
    //                           ),
    //                            TextFormField(
    //                             decoration: InputDecoration(labelText: ('Blood Pressure')),
    //                             keyboardType: TextInputType.number,
    //                           ),
    //                            TextFormField(
    //                             decoration: InputDecoration(labelText: ('Fever')),
    //                             keyboardType: TextInputType.number,
    //                           ),
    //                                   ],
    //                                 ),
                               
    //                           )
                               
    //                            );
    //                          })
    //                          );
                              
    //                         }), icon: Icon(Icons.edit)
    //                         );
  }
}