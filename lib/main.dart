import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/addPatient_page.dart';
import 'pages/register_page.dart';
import 'pages/option_page.dart';
import 'pages/loginNurse_page.dart';
import 'pages/patientInfo.dart';
import 'pages/patientList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
       PatientListPage(),
         // patientInfo_page(),
          //LoginNursePage(),
          //Option_page(),
         // RegisterPage(),
      // addPatient_page(),
      //  LoginPage(),
    );
  }
}
