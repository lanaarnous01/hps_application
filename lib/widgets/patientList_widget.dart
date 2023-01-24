// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
//import 'package:hps_application/pages/patientList.dart';
import '../pages/patientInfo.dart';
class PatientList extends StatelessWidget {
  final String name;
  final String wardNo;

  PatientList(this.name, this.wardNo);
 // const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      title: Text(name),
      subtitle: Text(wardNo),
      
        onTap: () {
         Navigator.of(context).push(
          MaterialPageRoute(builder: ((context) => patientInfo_page())));
        },
      
    );
  }
}