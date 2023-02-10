import 'package:flutter/material.dart';
import '../models/listModel.dart';

class Patients with ChangeNotifier{
  List<Patient> _patients =[
Patient(name: 'name1', wardNo: 'wardNo', id: '1'),
Patient(name: 'name2', wardNo: 'wardNo2', id: '2'),
Patient(name: 'name3', wardNo: 'wardNo3', id: '3'),
Patient(name: 'name4', wardNo: 'wardNo4', id: '4'),
Patient(name: 'name5', wardNo: 'wardNo5', id: '5'),
Patient(name: 'name6', wardNo: 'wardNo6', id: '6'),
  ];
  List <Patient> get patients {
    return [..._patients];
  }
  Patient findbyId (String id){ //name
  return _patients.firstWhere((prod) => prod.id == id); //prod.name == name
}
  void addPatient (Patient patient){
  final newPatient = 
  Patient(name: patient.name, wardNo: patient.wardNo, id: DateTime.now().toString());
  _patients.add(newPatient);
  notifyListeners();
}
  void updatePatient(String id, Patient newPatient){ //Patient newPatient // String name
    final patientIndex = _patients.indexWhere((pat) => pat.id == id); //pat.name == name
    if (patientIndex >=0){
      _patients[patientIndex] = newPatient; 
      notifyListeners();
    }else{
      print('.....');
    }
  }
  void deletePatient(String id){
    _patients.removeWhere((pat) => pat.id == id);
    notifyListeners();
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
