import 'package:flutter/material.dart';
import 'package:json_in_flutter/services/address_services.dart';
import 'package:json_in_flutter/services/page_services.dart';
import 'package:json_in_flutter/services/photo_services.dart';
import 'package:json_in_flutter/services/product_services.dart';
import 'package:json_in_flutter/services/shape_services.dart';
import 'package:json_in_flutter/services/student_services.dart';

void main() {
  runApp(new MyApp());
  loadStudent();
  loadAddress();
  loadShape();
  loadProduct();
  loadPhotos();
  loadPage();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}