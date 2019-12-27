  
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:json_in_flutter/model/product_model.dart';


Future<String> _loadProductAsset() async {
  return await rootBundle.loadString('assets/product.json');
}
Future loadProduct() async {
  String jsonProduct = await _loadProductAsset();
  final jsonResponse = json.decode(jsonProduct);
  Product product = new Product.fromJson(jsonResponse);
  print(product.images[0].imageName);
}