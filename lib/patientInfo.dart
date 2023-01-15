import 'package:flutter/material.dart';
import 'models/taskModel.dart';

//addPatient_page
class patientInfo_page extends StatefulWidget {
  const patientInfo_page({Key? key}) : super(key: key);

  State<patientInfo_page> createState() => _PatientInfoState();
}

Widget buildHeartRate() {
  return Text('Heart Rate');
}

class _PatientInfoState extends State<patientInfo_page> {
  final taskList = Task.generateTasks();
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.all(32), children: [
      Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.white10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 10,
              ),
              Text(
                'Patient Information',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: 50,
      ),
      Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          
        ),
        child: Text(
          'Tasks',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 50,
      ),
    ]));
  }
}
