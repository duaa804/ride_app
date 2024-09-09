

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
     'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzNTY0ODczOTg3IiwiaWF0IjoxNzI1ODYxNTU1LCJleHAiOjE3MjU5NDc5NTV9.YWBfNiQf8A-NBMqOR4R3WzlSEb0wlFIpGgRGjiTT14w '}
      // 'Authorization': 'Bearer ${box!.get('token')} '}
    );
  }else{
    return Options(
      headers: {'Content-Type': 'application/json'}
    );
  }
 } 
}
