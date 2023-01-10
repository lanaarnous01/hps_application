import 'package:flutter/material.dart';

//addPatient_page
class patientInfo_page extends StatefulWidget {
  const patientInfo_page({Key? key}) : super(key: key);

  State<patientInfo_page> createState() => _PatientInfoState();
}

class _PatientInfoState extends State<patientInfo_page> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Patient'),
          backgroundColor: Colors.red,
        ),
        body: ListView(padding: EdgeInsets.all(32), children: [
          Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.white10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
          ),
        ]));
  }
}
