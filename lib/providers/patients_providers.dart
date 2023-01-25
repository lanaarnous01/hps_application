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
 