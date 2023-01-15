import 'package:flutter/material.dart';
import 'models/taskModel.dart';

//addPatient_page
class patientInfo_page extends StatefulWidget {
  const patientInfo_page({Key? key}) : super(key: key);

  State<patientInfo_page> createState() => _PatientInfoState();
}

Widget buildHeartRate() {
  return Text('Heart Rate');
}

class _PatientInfoState extends State<patientInfo_page> {
 // final taskList = Task.generateTasks();
 final List<Map<String, dynamic>> gridMap =[
  {
    "title":"heart rate",
    "numberr": "9"
  },
  {"title": "Blood pressure",
  "numberr": "9"},
  {"title": "Fever",
  "numberr": "9"},
  {"title": "data",
  "numberr": "9"},
  // {"title": "Blood pressure",
  // "numberr": "9"},
  // {"title": "Blood pressure",
  // "numberr": "9"},
  // {"title": "Blood pressure 22",
  // "numberr": "9"},


 ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox(
                height: 50,
                width: 10,
              ),
              Text(
                'Patient Information',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(24.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 150
                    ), 
                    itemCount: gridMap.length,
                    itemBuilder: ( (_, index) {
                      return Container(
                       
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                               color:  Colors.white
                            ),

                          ),
                    ),
                    SizedBox(height: 30,),
                     Text(
                      "${gridMap.elementAt(index)['numberr']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color:  Colors.white // Colors.grey.shade500,
                            ),
                          ),
                    ),
                              ],
                            ),
                            ),
                            
                          ],
                        ),
                        
                      );
                    }
                    ),
                    ),
              ),
            ],
          ),
        ),
      ),
    
    //     body: ListView(padding: EdgeInsets.all(32), children: [
    //   Center(
    //     child: Container(
    //       decoration: BoxDecoration(color: Colors.white10),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           SizedBox(
    //             height: 50,
    //             width: 10,
    //           ),
    //           Text(
    //             'Patient Information',
    //             style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 26,
    //                 fontWeight: FontWeight.bold),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    //   SizedBox(
    //     height: 50,
    //   ),
    //   Container(
    //     padding: EdgeInsets.all(15),
    //     decoration: BoxDecoration(
          
    //     ),
    //     child: Text(
    //       'Tasks',
    //       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    //   SizedBox(
    //     height: 50,
    //   ),
    // ]),
    );
  }
}
