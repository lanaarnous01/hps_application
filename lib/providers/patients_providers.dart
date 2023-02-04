import 'package:flutter/material.dart';
import '../models/listModel.dart';

class Patients with ChangeNotifier{
  List<Patient> _patients =[
Patient(name: 'name1', wardNo: 'wardNo'),
Patient(name: 'name2', wardNo: 'wardNo2'),
Patient(name: 'name3', wardNo: 'wardNo3'),
Patient(name: 'name4', wardNo: 'wardNo4'),
Patient(name: 'name5', wardNo: 'wardNo5'),
Patient(name: 'name6', wardNo: 'wardNo6'),
  ];
  List <Patient> get patients {
    return [..._patients];
  }
}


class Categories with ChangeNotifier{
  List <Category> _categories = [
    Category(
      title: 'Heart Rate', 
      numberr: '9', 
      icons: Icon(Icons.monitor_heart_outlined)),
    Category(
      title: 'Blood Pressure', 
      numberr: '98', 
      icons: Icon(Icons.access_alarm_sharp) ),
    Category(
      title: 'Fever',
      numberr: '36',
      icons: Icon(Icons.thermostat)
    )

  ];
List <Category> get categories{
  return[..._categories];
}
}

// Patient findbyId (String name){
//   return _patients.firstWhere((prod) => prod.name == name); 
// }


 