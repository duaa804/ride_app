

import 'package:dio/dio.dart';

import 'hive_init.dart';

class HeaderConfig{
 static Options getHeader({useToken=true}){
  if(useToken){
    return Options(
     headers: {'accept':' */*' ,
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxMjM0NTY3ODk4IiwiaWF0IjoxNzI0ODc1Njc3LCJleHAiOjE3MjQ5NjIwNzd9.usO1ifzcP8Z1F6ImiDtJ99GKlKhkKRowCZ2SdvoECVs '}
    //  'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}