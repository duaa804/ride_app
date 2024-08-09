

import 'package:dio/dio.dart';

import 'hive_init.dart';

class HeaderConfig{
 static Options getHeader({useToken=true}){
  if(useToken){
    return Options(
     headers: {'accept':' */*' ,
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxMjM0NTY3ODA5IiwiaWF0IjoxNzIzMDQwODAxLCJleHAiOjE3MjMxMjcyMDF9.2R-oDPz4fwD7I5SwlBr75gU7ADTkWGW4gCo6v0D_uEw '}
     //'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}