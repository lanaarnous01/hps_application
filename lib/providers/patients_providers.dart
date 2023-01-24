import 'package:flutter/material.dart';
import '../models/listModel.dart';

class Patients with ChangeNotifier{
  List<Patient> _patients =[

  ];
  List <Patient> get patients {
    return [...patients];
  }
}
 