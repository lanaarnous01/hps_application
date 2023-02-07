import 'package:hps_application/models/listModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
//import 'package:hps_application/pages/patientList.dart';
import '../pages/patientInfo.dart';
//import '../widgets/updateSheet.dart';
import'../providers/patients_providers.dart';
class PatientList extends StatefulWidget {
 //changed to stateful
  final String name;
  final String wardNo;
  //final String id;

  PatientList(this.name, this.wardNo, 
  //this.id 
  );

  @override
  State<PatientList> createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
 // const PatientList({super.key});
 final _form = GlobalKey<FormState>();
 var _editedPatient = Patient(name: '', wardNo: '');
 void _saveForm() {
  _form.currentState!.save();
 // if (_editedPatient.name != null){
    Provider.of<Patients>(context, listen: false).updatePatient(_editedPatient.name, _editedPatient);
//  }
  Navigator.of(context).pop();
 }
 @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    // final patientId = ModalRoute.of(context)!.settings.arguments as String;
    //    final loadedPatient = Provider.of<Patients>(context).patients.firstWhere((prod) => prod.name == patientName); 
    super.didChangeDependencies();
   
  }
  @override
  Widget build(BuildContext context) {
    // consumer added 
    // consumer is for fav (might remove)
    return Consumer<Patient>(
      builder: (context, value, child) => 
       Form(
        key: _form,
         child: ListTile(
          
          title: Text(widget.name),
          subtitle: Text(widget.wardNo),
          trailing: Container(
            width: 100,
            child: Row(
              children: [
                 IconButton(
                              onPressed: (() {
                               showModalBottomSheet(context: context, 
                              // isScrollControlled: true,
                               builder: ((BuildContext context) {
                                 BorderRadius.only(topLeft: Radius.circular(25));
                                 
                                 return Padding(
                                  
                                   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),    //const EdgeInsets.all(10),
                                   child: 
                                    Form(
                                      child: 
                                      Column(
                                        children: [
                                          TextFormField(
                                  decoration: InputDecoration(labelText: ('Name')),
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    _editedPatient = Patient(name: value, wardNo: _editedPatient.wardNo);
                                  },
                                ),
                                 TextFormField(
                                  decoration: InputDecoration(labelText: ('Ward No.')),
                                  keyboardType: TextInputType.number,
                                  onSaved: (value) {
                                    _editedPatient = Patient(name: _editedPatient.name, wardNo: value);
                                  },
                                ),
                                IconButton(onPressed: _saveForm, icon: Icon(Icons.add))
                                 
                                        ],
                                      ),
                                 
                                )
                                 
                                 );
                               })
                               );
                                
                              }), icon: Icon(Icons.edit)
                              ),
                IconButton(onPressed: (() {}), 
                icon: Icon(Icons.delete)),
                
              ],
            ),
          ),
          
       
            onTap: () {
              //pushNamed
             Navigator.of(context).pushNamed(
            //  MaterialPageRoute(builder: ((context) => patientInfo_page(name))
            //  )
             patientInfo_page.routeName,arguments: widget.name
         
             );
            },
          
             ),
       ),
    );
  }
}