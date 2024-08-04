import 'package:dio/dio.dart';
import 'package:ride_app/core/service/coreService.dart';
import 'package:ride_app/model/client_model.dart';
import 'package:ride_app/model/login_model.dart';

import '../../../model/handling_model.dart';

abstract class AuthService extends Coreservice{
  Future<ResultModel> register(ClientModel client);
  Future<ResultModel> login(LoginModel user);
}

class AuthServiceImp extends AuthService{
  @override
  Future<ResultModel> register(ClientModel client)async {
    try{
      response =await dio.post(baseUrl+"/auth/register",data: client.toMap());
      if(response.statusCode==201){
        return DataSuccess();
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      return ExceptionModel(message: e.message);
    }
    
  }
  
  @override
  Future<ResultModel> login(LoginModel user) async{
   try{
      response =await dio.post(baseUrl+"/auth/authenticate",data: user.toMap());
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