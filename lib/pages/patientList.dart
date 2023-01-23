import 'package:flutter/material.dart';
import '../models/listModel.dart';
class PatientListPage extends StatefulWidget {
  const PatientListPage({Key? key}) : super(key: key);

  State<PatientListPage> createState() => _PatientListPageState();
}

class _PatientListPageState extends State<PatientListPage> {
  List patients = [
Patient('name', 'wardNo'),
Patient('name2', 'wardNo2'),
Patient('name3', 'wardNo3'),
Patient('name3', 'wardNo3'),
Patient('name3', 'wardNo3'),
Patient('name3', 'wardNo3'),
Patient('name3', 'wardNo3'),
Patient('name3', 'wardNo3'),

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
      body: SafeArea( 
        child: SingleChildScrollView(
          child: Column(
            children: [
        
             SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    
                    patients.map(
                          (e) => 
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 237, 224, 184),
                              borderRadius: BorderRadius.circular(13),
                             
                            ),
                            child: ListTile(
                              
                              title: Text(
                                e.name,
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(e.wardNo.toString()),
                                
                               
                                ],
                              ),
                              
                            ),
                          ),
                        )
                        .toList() ),
            ],
          )
        ),
      ),
      
    );
  }
}
