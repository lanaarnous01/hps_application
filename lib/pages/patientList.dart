import 'package:flutter/material.dart';
import '../models/listModel.dart';
import '../widgets/patientList_widget.dart';
class PatientListPage extends StatefulWidget {
  const PatientListPage({Key? key}) : super(key: key);

  State<PatientListPage> createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
  final List <Patient> patients = [
Patient(name: 'name', wardNo: 'wardNo'),
Patient(name: 'name2', wardNo: 'wardNo2'),
Patient(name: 'name3', wardNo: 'wardNo3'),
Patient(name: 'name4', wardNo: 'wardNo4'),
Patient(name: 'name5', wardNo: 'wardNo5'),
Patient(name: 'name6', wardNo: 'wardNo6'),

  ];

  

  Widget build(BuildContext context) {
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
        onPressed: () {},
      child: Icon(Icons.add,),
      ),

       body: 
       ListView.builder(
        itemCount: patients.length, 
       itemBuilder: ((ctx, i) => 
       Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 237, 224, 184),
                              borderRadius: BorderRadius.circular(13),
                             
                            ),
        child: PatientList(patients[i].name, patients[i].wardNo))
       ),
       )






       
      // GridView.builder(
      //   padding: EdgeInsets.all(10),
      //   itemCount: patients.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //   // childAspectRatio: 3/2,
      //   // crossAxisSpacing: 10,
      //   // mainAxisSpacing: 5
      //   ), 
      //   itemBuilder: ((ctx, i) => 
        
      //      PatientList(patients[i].name,
      //     patients[i].wardNo
      //     )
        
        
      //   ),
      //   ),


      // body: SafeArea( 
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
        
      //        SizedBox(height: 30,),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //               children: 
                    
      //               patients.map(
      //                     (e) => 
      //                     Container(
      //                       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            
      //                       decoration: BoxDecoration(
      //                         color: Color.fromARGB(255, 237, 224, 184),
      //                         borderRadius: BorderRadius.circular(13),
                             
      //                       ),
      //                       child: ListTile(
                              
      //                         title: Text(
      //                           e.name,
      //                           style: TextStyle(fontSize: 20),
      //                         ),
      //                         subtitle: Column(
      //                           mainAxisAlignment: MainAxisAlignment.start,
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: <Widget>[
      //                             Text(e.wardNo.toString()),
                                
                               
      //                           ],
      //                         ),
                              
      //                       ),
      //                     ),
      //                   )
      //                   .toList() ),
      //       ],
      //     )
      //   ),
      // ),
      
    );
  }
}
