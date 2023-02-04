import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Patient {
  final name;
  final wardNo;
  Patient({
   @required this.name, 
   @required  this.wardNo});
}

class Category{

  final title;
  final numberr;
  final icons;
  Category({this.title, this.numberr, this.icons});
}