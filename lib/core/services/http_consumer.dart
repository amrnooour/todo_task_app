import 'package:flutter/material.dart';
import 'package:todo_app/core/services/api_consumer.dart';
import 'package:http/http.dart' as http;

class HttpConsumer extends ApiConsumer{
  @override
  Future post(String path, {data, Map<String, dynamic>? queryParameter, Map<String, dynamic>? headers}) async{
    try{
      Uri url = Uri.https("https://todo.iraqsapp.com","/auth/login");
    final response = await http.post(url,body: data);
    return response;
    }catch(e){
      return Text(e.toString());
    }
  }
}