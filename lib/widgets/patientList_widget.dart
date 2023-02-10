
import 'package:hps_application/pages/addPatient_page.dart';
//import 'package:hps_application/widgets/updateSheet.dart';
//import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:hps_application/widgets/updateSheet.dart';
//import 'package:hps_application/pages/patientList.dart';
import '../pages/patientInfo.dart';
import 'package:provider/provider.dart';
import '../providers/patients_providers.dart';
//import '../widgets/updateSheet.dart';
//import'../providers/patients_providers.dart';


class PatientList extends StatefulWidget {
 //changed to stateful
  //final String id;
  final String name;
  final String wardNo;
  final String id;
 // final Function deleteHandler;

  PatientList(this.name, this.wardNo, 
  this.id, //this.deleteHandler
  );

  @override
  State<PatientList> createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
 // const PatientList({super.key});
//  final _form = GlobalKey<FormState>();

//  var _editedPatient = Patient(name: '', wardNo: '');

//  var _init = true;

//  void _saveForm() {
  @override
  Widget build(BuildContext context) {
    // consumer added 
    // consumer is for fav (might remove)
    return 
    // Consumer<Patient>(
    //   builder: (context, value, child) => 
       Form(
       // key: _form,
         child: ListTile(
          
          title: Text(widget.name),
          subtitle: Text(widget.wardNo),
          trailing: Container(
            width: 100,
            child: Row(
              children: [
                 IconButton(
                              onPressed: (() {
                               // Navigator.of(context).pushNamed(addPatient_page.routeName, arguments: widget.name );
                           // Navigator.of(context).pushNamed(addPatient_page.routeName, arguments: widget.name);
                           Navigator.of(context).pushNamed(UpdateSheet.routeName, arguments: widget.id);
                             
                              }
                              ), icon: Icon(Icons.edit)
                              ),
                IconButton(onPressed: (() {
               Provider.of<Patients>(context, listen: false).deletePatient(widget.id);
                }), 
                icon: Icon(Icons.delete)),
                
              ],
            ),
          ),
          
       
            onTap: () {
              //pushNamed
             Navigator.of(context).pushNamed(
            //  MaterialPageRoute(builder: ((context) => patientInfo_page(name))
            //  )
             patientInfo_page.routeName,arguments: widget.id //name
         
             );
            },
          
             ),
       );
   // );
  }
}