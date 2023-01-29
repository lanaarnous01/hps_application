import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/addPatient_page.dart';
import 'pages/register_page.dart';
import 'pages/option_page.dart';
import 'pages/loginNurse_page.dart';
import 'pages/patientInfo.dart';
import 'pages/patientList.dart';
import 'package:provider/provider.dart';
import './providers/patients_providers.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //if smth changes in Patients(), wont change anything in material app, it will only rebuild listeners
      create: (context) => Patients(),

      //Alternative Provider syntaxes
      //changed to change notifier provider.value
      //value: Patients(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
         PatientListPage(),
         routes: {
          patientInfo_page.routeName:(context) => patientInfo_page(),
         },


           // patientInfo_page(),
            //LoginNursePage(),
            //Option_page(),
           // RegisterPage(),
        // addPatient_page(),
        //  LoginPage(),
      ),
    );
  }
}
