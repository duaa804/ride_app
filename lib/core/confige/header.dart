

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

class HeaderConfig {
  static Options getHeader({useToken = true}) {
    if (useToken) {
      return Options(
        headers: {
          'accept': ' */*',
          'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTkyMTI5NzQ2IiwiaWF0IjoxNzI1MDA4NjQ1LCJleHAiOjE3MjUwOTUwNDV9.mFq7xwxcG5JHVkPgSitPdDqXz2e0BsFeviACvlhE99o'
        },
      );
    } else {
      return Options(
        headers: {'Content-Type': 'application/json'},
      );
    }
  }
}
