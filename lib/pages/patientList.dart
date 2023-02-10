import 'package:flutter/material.dart';
import 'package:hps_application/pages/addPatient_page.dart';
// import '../models/listModel.dart';
import '../widgets/patientList_widget.dart';
import 'package:provider/provider.dart';
import '../providers/patients_providers.dart';

class PatientListPage extends StatefulWidget {
  const PatientListPage({Key? key}) : super(key: key);

  @override
  State<PatientListPage> createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
//   final List <Patient> patients = [
  Widget build(BuildContext context) {
    //gets junk data from patient list provider
    final patientsData = Provider.of<Patients>(context);
    final patients = patientsData.patients;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Patient List',
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => addPatient_page()));
        },
      child: Icon(Icons.add,),
      ),

       body: 
       ListView.builder(
        itemCount: patients.length, 
       itemBuilder: ((ctx, i) => 
       // provider added
       Provider(
        create: (context) => patients[i],
         child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(13),
                               
                              ),
          child: PatientList(
            patients[i].name, patients[i].wardNo,  patients[i].id,
          
            )),
       )
       ),
       )

    );
  }
}
