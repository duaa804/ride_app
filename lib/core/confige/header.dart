

// import 'package:dio/dio.dart';

// //
// //import 'hive_init.dart';

// class HeaderConfig{
//  static Options getHeader({useToken=true}){
//   if(useToken){
//     return Options(
//      headers: {'accept':' */*' ,
//      'Authorization': 'Bearer  '}
//      //'Authorization': 'Bearer ${box!.get('token')} '}
//     );
//   }else{
//     return Options(
//       headers: {'Content-Type': 'application/json'}
//     );
//   }
//  } 
// }
import 'package:dio/dio.dart';

import 'hive_init.dart';

class HeaderConfig{
 static Options getHeader({useToken=true}){
  if(useToken){
    return Options(
     headers: {'accept':' */*' ,
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMzY3NTg3NjM0IiwiaWF0IjoxNzI2MDc1MjcxLCJleHAiOjE3MjYxNjE2NzF9.IaQD-zkFPQz1Y1BsophHGbeyKcQTSRniNRaYWzYEtpE '}
      // 'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}
