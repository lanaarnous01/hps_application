import 'package:flutter/material.dart';
import '../providers/patients_providers.dart';
import '../models/listModel.dart';
//addPatient_page
class addPatient_page extends StatefulWidget {
  static const routeName = '/editPatient';
  const addPatient_page({Key? key}) : super(key: key);

  State<addPatient_page> createState() => _AddPageState();
}


class _AddPageState extends State<addPatient_page> {

  final _form = GlobalKey<FormState>();
  var _edited = Patient(name: '', wardNo: '' );

void _saveForm(){
   _form.currentState!.save();
   print(_edited.name);
   print(_edited.wardNo);
}
  Widget buildName() => TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Name',
        ),
        onSaved: (value) {
      _edited = Patient(name: value, wardNo: _edited.wardNo);
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
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Ward No.',
        ),
        onSaved: (value) {
          _edited = Patient(name: _edited.name, wardNo: value);
        },
      );

  Widget buildNumber() => TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Phone Number',
        ),
      );

  

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Patient'),
          backgroundColor: Colors.red,
          
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
  }
}
