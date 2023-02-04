import 'package:hps_application/models/listModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
//import 'package:hps_application/pages/patientList.dart';
import '../pages/patientInfo.dart';
class PatientList extends StatelessWidget {
  final String name;
  final String wardNo;

  PatientList(this.name, this.wardNo);
 // const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    // consumer added 
    // consumer is for fav (might remove)
    return Consumer<Patient>(
      builder: (context, value, child) => 
       ListTile(
        
        title: Text(name),
        subtitle: Text(wardNo),
        trailing: IconButton(onPressed: (() {
          
        }), icon: Icon(Icons.delete)),
          onTap: () {
            //pushNamed
           Navigator.of(context).pushNamed(
          //  MaterialPageRoute(builder: ((context) => patientInfo_page(name))
          //  )
           patientInfo_page.routeName,arguments: name
       
           );
          },
        
      ),
    );
  }
}