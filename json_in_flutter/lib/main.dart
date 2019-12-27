import 'package:flutter/material.dart';
import 'package:json_in_flutter/model/post_model.dart';
import 'package:json_in_flutter/services/post_services.dart';
//import 'package:json_in_flutter/services/address_services.dart';
//import 'package:json_in_flutter/services/page_services.dart';
//import 'package:json_in_flutter/services/photo_services.dart';
//import 'package:json_in_flutter/services/post_services.dart';
//import 'package:json_in_flutter/services/product_services.dart';
//import 'package:json_in_flutter/services/shape_services.dart';
//import 'package:json_in_flutter/services/student_services.dart';

void main() {
  runApp(new MyApp());
  //loadStudent();
  //loadAddress();
  //loadShape();
  //loadProduct();
  //loadPhotos();
  //loadPage();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Working with API"),
        centerTitle: true,
      ),
      body: FutureBuilder<Post>(
        future: getPost(),
        builder: (context, snapshot){
          return Text('${snapshot.data.title}');
        },
      ),
    );
  }
}
