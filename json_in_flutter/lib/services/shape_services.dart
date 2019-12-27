  
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:json_in_flutter/model/shape_model.dart';



Future<String> _loadShapeAsset() async {
  return await rootBundle.loadString('assets/shape.json');
}

Future loadShape() async {
  String jsonShape = await _loadShapeAsset();
  final jsonResponse = json.decode(jsonShape);
  Shape shape = new Shape.fromJson(jsonResponse);
  print(shape.property.width);
}
