import 'package:flutter/material.dart';
import 'package:hps_application/models/listModel.dart';
import 'package:hps_application/pages/history_page.dart';
//import 'package:hps_application/providers/history.dart';
//import 'package:hps_application/widgets/patientList_widget.dart';
//import '../models/taskModel.dart';
import 'package:provider/provider.dart';
import '../providers/patients_providers.dart';
//import '../widgets/patientList_widget.dart';
import '../pages/addPatient_page.dart';


class patientInfo_page extends StatefulWidget {
 
// final String namee;
// patientInfo_page(thisse);

static const routeName = '/patient-info';

  @override
  State<patientInfo_page> createState() => _patientInfo_pageState();
}

class _patientInfo_pageState extends State<patientInfo_page> {
 final List categories =[
  {
    "title":"heart rate",
    "numberr": '9',
    "icons": Icon(Icons.monitor_heart)
    
  },
  {"title": "Blood pressure",
  "numberr": "9",
  "icons": Icon(Icons.access_alarm_sharp)
  },
  {"title": "Fever",
  "numberr": "9",
  "icons": Icon(Icons.thermostat)
  },
  {"title": "data",
  "numberr": "9",
  "icons": Icon(Icons.monitor_heart)
  },
  


 ];
 // fix to category
//var _editedCategory = Patient(name: '');
 //final _form = GlobalKey<FormState>();

 

  Widget build(BuildContext context) {
    //Changed to stateless, to show names when going next page
    //back to stetfull to save ny updates
   final patientName = ModalRoute.of(context)!.settings.arguments as String;
    // final loadedPatient = Provider.of<Patients>(context).findbyId(patientName);
   final loadedPatient = Provider.of<Patients>(context).patients.firstWhere((prod) => prod.id == patientName); //prod.name == patientName
   final patientsData = Provider.of<Patients>(context);
    final patients = patientsData.patients;
  //  final categoryName = ModalRoute.of(context)!.settings.arguments as String;
  // final loadedCategory = Provider.of(context).categories.firstWhere((cat) => cat.title == categoryName);
  //  final categoriesData = Provider.of<Categories>(context);
   final categoriesData = Provider.of<Categories>(context);
   final categories = categoriesData.categories;
   
    return Scaffold(
             appBar: AppBar(
              // iconTheme: IconThemeData(color: Colors.indigoAccent),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        title: Text('Patient Information', 
        style: TextStyle(fontSize: 27,
        fontWeight: FontWeight.bold,
           // color: Colors.indigoAccent// Colors.deepOrangeAccent// Colors.redAccent
     ),
        ),
  //        shape: Border(
  //   bottom: BorderSide(
  //     color: Colors.indigoAccent,//Colors.deepOrangeAccent,
  //     width: 4
  //   )
  // ),
       centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28)),
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.blueAccent],//[Colors.orange, Colors.deepOrangeAccent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
              ),
          ),
        ),
      ),
      body: 
      SafeArea(
        child: //singlechildscrollview
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              //color: Colors.indigoAccent, //amber accent
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.blue)
             
            ),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
             
              children: [
                 Icon(Icons.person, color: Colors.indigoAccent,),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( loadedPatient.name,       //patientName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent
                  ),
                  ),
                 
                  SizedBox(height: 10,),
                  Text(loadedPatient.wardNo,          //'Age',
                  style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent //white
                  ),
                  ),
                 
                ],
              ),
              ],
             ),

            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 300,
              child: 
              ListView.builder(itemCount: categories.length,
              itemBuilder: (_, index) => 
              Container(
               
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigoAccent
              //   gradient: LinearGradient(
              // colors: [Colors.indigo, Colors.blueAccent],// [new Color(0xffF5591F), new Color(0xffF2861E)],  //[Colors.redAccent, Colors.pink],
              // begin: Alignment.bottomCenter,
              // end: Alignment.topCenter
              // ),
              ),
                 margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
               
                child: ListTile(
  //                   shape: RoundedRectangleBorder(
  //         side: BorderSide(width: 2, color: Colors.indigoAccent), //redAccent
  //         borderRadius: BorderRadius.circular(20), //10
  // ),
                  iconColor: Colors.white,// Colors.indigoAccent,
                  leading:  categories[index].icons,
                  title: Text(categories[index].title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),), 
                  trailing: Text(categories[index].numberr, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  ),
              )
              ),
            ),
              InkWell(
                onTap:() {
                  //navigation push
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HistoryPage()),
  );
                  // Provider.of<History>(context, listen: false).addHistory(
                  
                  // );
                },
                child: Center(
                  child: Container(
                  
                    width: 150, //150
                    decoration: BoxDecoration(
                   
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
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(95), //95
                          topLeft: Radius.circular(95),
                          bottomRight: Radius.circular(240) //240
                          )
                          ),
                        ),
                     
                        Icon(Icons.arrow_circle_right_outlined, size: 30, color: Colors.blue, )
                      ],
                    ),
                  
                  ),
                ),
              ),
             
          ],
        ),
      ),
    
  
    );
  }
}


