import 'package:dio/dio.dart';
import 'package:ride_app/core/service/coreService.dart';
import 'package:ride_app/src/features/hub/model/bicycle_model.dart';

import '../confige/header.dart';
import '../model/handling_model.dart';

abstract class BicyclesService extends Coreservice{
   Future<ResultModel>getAllBicyclesCategorys();
  Future<ResultModel>getAllBicyclesByCategoryName();
}
List _categories=[];
class BicyclesServiceImp extends BicyclesService{
  @override
  Future<ResultModel> getAllBicyclesCategorys()async {
    try{
      response =await dio.get(baseUrl+"bicycle/bicycles-categories",options:HeaderConfig.getHeader());
      List data=response.data["body"];
      _categories=data;
      print(data);
      if(response.statusCode==200){
        return ListOf(data: data);
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      print(e.message);
      return ExceptionModel(message: e.message);
      
    }
  }

  @override
  Future<ResultModel> getAllBicyclesByCategoryName()async {
     try{
      response =await dio.get(baseUrl+"bicycle/bicycles-by-category?category=Mountain_bikes",options:HeaderConfig.getHeader());
      List data=response.data["body"];
      List bicycle =List.generate(data.length, (index)=>BicycleModel.fromMap(data[index]));
      print(bicycle);
      if(response.statusCode==200){
        return ListOf(data:bicycle);
      }else{
        return ErrorModel();
      }
      
    }on DioException catch(e){
      print(e.message);
      return ExceptionModel(message: e.message);
      
    }
  }

}