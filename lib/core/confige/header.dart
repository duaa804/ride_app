

import 'package:dio/dio.dart';

import 'hive_init.dart';

class HeaderConfig{
 static Options getHeader({useToken=true}){
  if(useToken){
    return Options(
     headers: {'accept':' */*' ,
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTMyNjU5ODc0IiwiaWF0IjoxNzIzNTQ4MjM3LCJleHAiOjE3MjM2MzQ2Mzd9.si6MCEcO23h1RLKcFQZ_cz4NcRhdNHlxfOczGWvKIw4'
  }

     //'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}