import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Patient {
  final name;
  final wardNo;
  //final id;
  Patient({
   @required this.name, 
   @required  this.wardNo,
  // this.id
   });
}

class Category{

  final title;
  final numberr;
  final icons;
  Category({this.title, this.numberr, this.icons});
}