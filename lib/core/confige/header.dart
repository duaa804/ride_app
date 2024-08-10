

import 'package:dio/dio.dart';

import 'hive_init.dart';

class HeaderConfig{
 static Options getHeader({useToken=true}){
  if(useToken){
    return Options(
     headers: {'accept':' */*' ,
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxMjM0NTY3OTgwIiwiaWF0IjoxNzIzMjMxNDA2LCJleHAiOjE3MjMzMTc4MDZ9.dxlehP1xwPRCcImDiU8D9CbWBzgKIaGvoCwHvzxghOw'}
     //'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}