import 'package:flutter/material.dart';

//addPatient_page
class addPatient_page extends StatefulWidget {
  const addPatient_page({Key? key}) : super(key: key);

  State<addPatient_page> createState() => _AddPageState();
}

class _AddPageState extends State<addPatient_page> {
  Widget buildName() => TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Name',
        ),
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

  Widget buildWardNo() => TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 3)),
          labelText: 'Ward No.',
        ),
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
        body: ListView(padding: EdgeInsets.all(32), children: [
          Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.white10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildName(),
                  SizedBox(height: 50),
                  buildID(),
                  SizedBox(height: 50),
                  buildBirthday(),
                  SizedBox(height: 50),
                  buildWardNo(),
                  SizedBox(height: 50)
                ],
              ),
            ),
          ),
        ]));
  }
}
