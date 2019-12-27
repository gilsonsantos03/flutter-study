import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:json_in_flutter/model/page_model.dart';

Future<String> _loadPageAsset() async {
  return await rootBundle.loadString('assets/page.json');
}

Future loadPage() async {
  String jsonPage = await _loadPageAsset();
  final jsonResponse = json.decode(jsonPage);
  Page page = new Page.fromJson(jsonResponse);
  print(page.data[0].images[1].imageId);
}
