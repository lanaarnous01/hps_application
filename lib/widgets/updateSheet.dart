
import 'package:flutter/material.dart';

class UpdateSheet extends StatefulWidget {
  static const routeName = '/updatePatient';
  const UpdateSheet({super.key});

  @override
  State<UpdateSheet> createState() => _UpdateSheetState();
}

class _UpdateSheetState extends State<UpdateSheet> {
  @override
  Widget build(BuildContext context) {
    return 
    IconButton(
                            onPressed: (() {
                             showModalBottomSheet(context: context, 
                             isScrollControlled: true,
                             builder: ((BuildContext context) {
                               BorderRadius.only(topLeft: Radius.circular(25));
                               
                               return Padding(
                                
                                 padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),    //const EdgeInsets.all(10),
                                 child: 
                                  Form(
                                  
                                    child: 
                                    Column(
                                      children: [
                                        TextFormField(
                                decoration: InputDecoration(labelText: ('Heart rate')),
                                keyboardType: TextInputType.number,
                              ),
                               TextFormField(
                                decoration: InputDecoration(labelText: ('Blood Pressure')),
                                keyboardType: TextInputType.number,
                              ),
                               TextFormField(
                                decoration: InputDecoration(labelText: ('Fever')),
                                keyboardType: TextInputType.number,
                              ),
                                      ],
                                    ),
                               
                              )
                               
                               );
                             })
                             );
                              
                            }), icon: Icon(Icons.edit)
                            );
  }
}