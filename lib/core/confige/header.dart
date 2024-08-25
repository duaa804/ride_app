

import 'package:dio/dio.dart';

import 'hive_init.dart';

class HeaderConfig{
 static Options getHeader({useToken=true}){
  if(useToken){
    return Options(
     headers: {'accept':' */*' ,
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI5ODc2MjMwMjc2IiwiaWF0IjoxNzI0NDE4MzA3LCJleHAiOjE3MjQ1MDQ3MDd9.q64xG8NNeqAgtyQqWngDuEUuC8ejXU6_88IT883IR4g'}
     //'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}