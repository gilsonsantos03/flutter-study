import 'package:json_in_flutter/model/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';

String url = 'https://jsonplaceholder.typicode.com/posts';

Future<Post> getPost() async{
  final response = await http.get('$url/1');
  return postFromJson(response.body);
}

Future<Post> createPost(Post post) async{
  final response = await http.post('$url',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json'
      },
      body: postToJson(post)
  );
  return postFromJson(response.body);
}

