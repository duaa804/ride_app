

import 'package:dio/dio.dart';

import 'hive_init.dart';

class HeaderConfig{
 static Options getHeader({useToken=true}){
  if(useToken){
    return Options(
     headers: {'accept':' */*' ,
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2MjAwOTAwOTg3IiwiaWF0IjoxNzI0OTU3ODExLCJleHAiOjE3MjUwNDQyMTF9.tqzZCJ_oidPuJPtK7vnHd3hJApp0JIcXoF6lviqYJ58 '}
    //  'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}