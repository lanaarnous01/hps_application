import 'package:flutter/material.dart';
import '../providers/patients_providers.dart';
import 'package:provider/provider.dart';
import '../models/listModel.dart';
//addPatient_page
class addPatient_page extends StatefulWidget {
  static const routeName = '/editPatient'; //change to add
  const addPatient_page({Key? key}) : super(key: key);

  State<addPatient_page> createState() => _AddPageState();
}


class _AddPageState extends State<addPatient_page> {

  final _form = GlobalKey<FormState>();
  var _edited = Patient(name: '', wardNo: '', id: null );
  var _initValues = {
    'name': '',
    'wardNo.': '',
  };
  var _isInit = true;


  @override
  void didChangeDependencies() {
    if (_isInit){
      final patientNamee = ModalRoute.of(context)!.settings.arguments as dynamic;
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
  final isValid = _form.currentState!.validate();
  if (!isValid){
    return;
  }
   _form.currentState!.save();
   //print in console
  //  print(_edited.name);
  //  print(_edited.wardNo);

  //Adding patient in the patient list
//  if (_edited.name != null ) //name
//   { Provider.of<Patients>(context, listen: false).updatePatient(_edited.name, _edited);}
//   else

  Provider.of<Patients>(context, listen: false).addPatient(_edited);
  Navigator.of(context).pop();
}
 
  Widget buildName() => TextFormField(
    initialValue: _initValues['name'],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent, width: 3)),
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
  Widget buildID() => TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Patient ID',
        ),
      );
  Widget buildBirthday() => TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Birth date',
        ),
      );

  Widget buildWardNo() => TextFormField(
    initialValue: _initValues['wardNo.'],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent, width: 3)),
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

  Widget buildNumber() => TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent, width: 3)),
          labelText: 'Phone Number',
        ),
      );

  

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
         iconTheme: IconThemeData(color: Colors.indigoAccent),
          backgroundColor: Colors.transparent,
          title: Text('Add Patient',
           style: TextStyle(fontSize: 27,
        fontWeight: FontWeight.bold,
            color: Colors.indigoAccent// Colors.deepOrangeAccent// Colors.redAccent
     ),
          ),
      centerTitle: true,
                   shape: Border(
    bottom: BorderSide(
      color: Colors.indigoAccent,//Colors.deepOrangeAccent,
      width: 4
    )
  ),
          
        ),
        // backgroundColor: Color.fromARGB(255, 248, 85, 85),
        body: Form(
          key: _form,
          child: ListView(padding: EdgeInsets.all(32), 
          
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(color: Colors.white10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    buildName(),
                   // SizedBox(height: 50),
                //    buildID(),
                    SizedBox(height: 50),
                 //   buildBirthday(),
                  //  SizedBox(height: 50),
                    buildWardNo(),
                    SizedBox(height: 50),
                     IconButton(onPressed: _saveForm, icon: Icon(Icons.add_box_sharp, size: 50, color: Colors.blue,))
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
