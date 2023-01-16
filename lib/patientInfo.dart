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
    "numberr": "9",
    
  },
  {"title": "Blood pressure",
  "numberr": "9"},
  {"title": "Fever",
  "numberr": "9"},
  {"title": "data",
  "numberr": "9"},
  


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
            height: 100,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(
                     
                     bottomRight: Radius.circular(40),
                       bottomLeft: Radius.circular(40)
                      ),
               // color: new Color(0xffF5591F),
                gradient: LinearGradient(
                  begin: Alignment.topCenter, //center
                  end: Alignment.bottomCenter, //bottomright
                  colors: [new Color(0xffF5591F), new Color(0xffF2861E)],
                )),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    alignment: Alignment.topCenter,
                    height: 40,
                    width: 300,
                    child: Text(
                      'Patient Information',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
               
                ],
              ),
            ),
          ),
            // Stack(
            //   children: [
            //     Container(height: MediaQuery.of(context).size.height - 20,
            //     width: MediaQuery.of(context).size.width,
            //    color: Color(0xFFF3B2B7), 
            //     ),
            //     Positioned(
            //       top: MediaQuery.of(context).size.height /8,
            //       child: Container(
            //         height: MediaQuery.of(context).size.height /1,
            //         width: MediaQuery.of(context).size.width,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.only(topRight: Radius.circular(40),
            //           topLeft: Radius.circular(40)),
            //           color: Colors.white
            //         ),
                    
            //       ),
                  
            //       ),
                  
                

            //   ],
            // ),
              Container(
                child: Stack(
                  children: [
                    Container(margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                     
                    ),
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Icon(Icons.person),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                          SizedBox(height: 10,),
                          Text('Age',
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                          SizedBox(height: 10,),
                          Text('Ward No.',
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),

                        ],
                      ),
                      ],
                     ),

                    ),
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
                          
                         gradient: LinearGradient(
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter, 
                  colors: [new Color(0xffF5591F), new Color(0xffF2861E)],
                ),
                
                        
                         
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
