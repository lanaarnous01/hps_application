import 'package:flutter/material.dart';
import '../models/taskModel.dart';

//addPatient_page
class patientInfo_page extends StatefulWidget {
  const patientInfo_page({Key? key}) : super(key: key);

  State<patientInfo_page> createState() => _PatientInfoState();
}

Widget buildHeartRate() {
  return Text('Heart Rate');
}

class _PatientInfoState extends State<patientInfo_page> {
 
 final List<Map<String, dynamic>> categories =[
  {
    "title":"heart rate",
    "numberr": '9',
    "icons": Icon(Icons.monitor_heart)
    
  },
  {"title": "Blood pressure",
  "numberr": "9",
  "icons": Icon(Icons.time_to_leave)
  },
  {"title": "Fever",
  "numberr": "9",
  "icons": Icon(Icons.monitor_heart)
  },
  {"title": "data",
  "numberr": "9",
  "icons": Icon(Icons.monitor_heart)
  },
  


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
               
                gradient: LinearGradient(
                  begin: Alignment.topCenter, 
                  end: Alignment.bottomCenter, 
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
                    itemCount: categories.length,
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
                            child: Column( //column
                              children: [
                                categories.elementAt(index)['icons'],
                                Text(
                      "${categories.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                               color:  Colors.white
                            ),

                          ),
                    ),
                    
                    SizedBox(height: 30,),
                     Text(
                      "${categories.elementAt(index)['numberr']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color:  Colors.white 
                            ),
                          ),
                    ),
                    
                              ],
                            ),
                            ),
                          ], ), );
                      
                    }
                    ),
                    ),
              ),
              //wrap with ink well (button)
              Center(
                child: Container(
                  
                  width: 150,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 20),
                        blurRadius: 30,
                        color: Colors.black
                      ),
                    ],
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        height: 50,
                        width: 110,
                         child: Text('Activity', 
                         style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                         ),
                         
                        
                        ),
                        decoration: BoxDecoration(color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(240)
                        )
                        ),
                      ),
                      Icon(Icons.access_time_outlined, size: 30, )
                    ],
                  ),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    
  
    );
  }
}
