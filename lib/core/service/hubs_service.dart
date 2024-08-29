import 'package:dio/dio.dart';
//import 'package:flutter/foundation.dart';
import 'package:ride_app/core/service/coreService.dart';
import 'package:ride_app/src/features/transport/model/hub_content_model.dart';
import 'package:ride_app/src/features/hub/model/hub_model.dart';

import '../confige/header.dart';
import '../model/handling_model.dart';

abstract class HubsService extends Coreservice{
  Future<ResultModel>getAllHubs();
  Future<ResultModel>getHubById();
  Future<ResultModel>getContentOfHubById();

}

class HubsServiceImp extends HubsService{

  @override
  Future<ResultModel> getAllHubs()async {
     try{
      response =await dio.get(baseUrl+"hubs?longtitude=36.278336&latitude=33.510414",options:HeaderConfig.getHeader());
      var data=response.data["body"];
      List hubs=List.generate(data.length,(index)=>HubModel.fromMap(data[index]));
      print(hubs);
      if(response.statusCode==200){
        return ListOf(data: hubs);
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      print(e.message);
      return ExceptionModel(message: e.message);
      
    }
  }

   @override
  Future<ResultModel> getHubById()async {
    try{
      response =await dio.get(baseUrl+"hubs/4",options:HeaderConfig.getHeader());
      var data=response.data["body"];
      var hub=HubModel.fromMap(data);
      print(hub);
      if(response.statusCode==200){
        return hub;
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      print(e.message);
      return ExceptionModel(message: e.message);
      
    }
  }
  
  @override
  Future<ResultModel> getContentOfHubById()async {
   try{
      response =await dio.get(baseUrl+"hub-content/1?bicycleCategory=Mountain_bikes",options:HeaderConfig.getHeader());
      var data=response.data["body"]["bicycleList"];
      List<HubContentModel> bicyclesHub=List.generate(data.length,(index)=>HubContentModel.fromMap(data[index]));
      print(data);
      print(bicyclesHub);
      if(response.statusCode==200){
        return ListOf(data: bicyclesHub);
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      print(e.message);
      return ExceptionModel(message: e.message);
      
    }
  }

}