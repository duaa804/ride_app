import 'package:dio/dio.dart';
import 'package:ride_app/core/service/coreService.dart';
import 'package:ride_app/src/features/auth/model/client_model.dart';
import 'package:ride_app/core/model/login_model.dart';

import '../../model/handling_model.dart';
import '../../confige/hive_init.dart';

abstract class AuthService extends Coreservice{
  Future<ResultModel> register(ClientModel client);
  Future<ResultModel> login(LoginModel user);
}

class AuthServiceImp extends AuthService{
  @override
  Future<ResultModel> register(ClientModel client)async {
    try{
      response =await dio.post(baseUrl+"auth/register",data: client.toMap());
      String message=response.data["message"];
      String token=response.data["body"]["token"];
      await box!.put('token', token);
      print(message);
      if(response.statusCode==200){
        return DataSuccess();
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      print(e.message);
      return ExceptionModel(message: e.message);
      
    }
    
  }
  
  @override
  Future<ResultModel> login(LoginModel user) async{
   try{
      response =await dio.post(baseUrl+"auth/authenticate",data: user.toMap());
      if(response.statusCode==201){
        return DataSuccess();
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      return ExceptionModel(message: e.message);
    }
  }

}