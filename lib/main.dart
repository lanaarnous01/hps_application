import 'package:flutter/material.dart';
import 'package:hps_application/providers/history.dart';
import 'package:hps_application/widgets/updateSheet.dart';
import 'pages/login_page.dart';
import 'pages/addPatient_page.dart';
import 'pages/register_page.dart';
import 'pages/option_page.dart';
import 'pages/loginNurse_page.dart';
import 'pages/patientInfo.dart';
import 'pages/patientList.dart';
import 'package:provider/provider.dart';
import './providers/patients_providers.dart';
import './widgets/patientInfo_widget.dart';
import './pages/updateMeasurements.dart';
//import 'package:firebase_core/firebase_core.dart';
void main() {
  runApp(const MyApp());
 
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //change notifier provider
    //create: (context) => Patients(),

    //multi provider added 
    return MultiProvider(
      providers: [
        // each class in provider must be added
        ChangeNotifierProvider(
          create: (context) => Patients(),
        ),
        ChangeNotifierProvider(
          create: (context) => History(),
        ),
        ChangeNotifierProvider(
          create: (context) => Categories())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
         PatientListPage(),
         routes: {
          patientInfo_page.routeName:(context) => patientInfo_page(),
        addPatient_page.routeName:(context) => addPatient_page(),
        UpdateSheet.routeName:(context) => UpdateSheet(),
        PatientInfoWidget.routeName:(context) => PatientInfoWidget(),
       UpdateMeasurements.routeName:((context) => UpdateMeasurements()),
         
         },
    
    
          
            //LoginNursePage(),
           
           // RegisterPage(),
        
        //  LoginPage(),
      ),
    );
  }
}
