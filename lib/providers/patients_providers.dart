import 'package:flutter/material.dart';
import '../models/listModel.dart';

class Patients with ChangeNotifier{
  List<Patient> _patients =[
Patient(name: 'name1', wardNo: 'wardNo', id: '1', numberHeart: '3', numberPressure: '5', numberFever: '36') , //numberHeart: '3', numberPressure: '5', numberFever: '36'
Patient(name: 'name2', wardNo: 'wardNo2', id: '2', numberHeart: '4', numberPressure: '5', numberFever: '36'),
Patient(name: 'name3', wardNo: 'wardNo3', id: '3', numberHeart: '5', numberPressure: '5', numberFever: '36'),
Patient(name: 'name4', wardNo: 'wardNo4', id: '4', numberHeart: '6', numberPressure: '5', numberFever: '36'),
Patient(name: 'name5', wardNo: 'wardNo5', id: '5', numberHeart: '7', numberPressure: '5', numberFever: '36'),
Patient(name: 'name6', wardNo: 'wardNo6', id: '6', numberHeart: '8', numberPressure: '5', numberFever: '36'),
  ];
  List <Patient> get patients {
    return [..._patients];
  }
  Patient findbyId (String id){ //name
  return _patients.firstWhere((prod) => prod.id == id); //prod.name == name
}
  void addPatient (Patient patient){
  final newPatient = 
  Patient(name: patient.name, wardNo: patient.wardNo, id: DateTime.now().toString(), numberHeart: patient.numberHeart,  numberPressure: patient.numberPressure, numberFever: patient.numberFever); // numberHeart: patient.numberHeart, numberFever: patient.numberFever, numberPressure: patient.numberPressure
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
    };
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
      icons: Icon(Icons.monitor_heart_outlined),
      id:  '1'
      ),
      
    Category(
      title: 'Blood Pressure', 
      numberr: '98', 
      icons: Icon(Icons.access_alarm_sharp),
       id: '2' 
       ),
    Category(
      title: 'Fever',
      numberr: '36',
      icons: Icon(Icons.thermostat), 
      id: '3'
    )

  ];
List <Category> get categories{
  return[..._categories];
}
Category findbyIdCategory(String id){
  return _categories.firstWhere((cat) => cat.id == id); // return _patients.firstWhere((prod) => prod.id == id);
}
void addCategory(Category category){
  final newCategory = Category(title: category.title, numberr: category.numberr, id: DateTime.now().toString(), icons: category.icons
  );
  _categories.add(newCategory);
  notifyListeners();
  
}
 void updateNumberr(String title, Category newCategory){ //Patient newPatient // String name
    final patientIndex = _categories.indexWhere((pat) => pat.title == title); //pat.name == name
    if (patientIndex >=0){
      _categories[patientIndex] = newCategory; 
      notifyListeners();
    }else{
      print('.....');
    }
  }

    void addActivity(List<Patient> activityHistory, String total){ //List<Patient> Category
    _categories.insert(0, 
    Category(
      id: DateTime.now().toString(),
      title: activityHistory,
      numberr: total
    //  numberr: numberrr
    )
    );
    notifyListeners();
  }

}
