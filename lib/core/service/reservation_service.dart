import 'package:dio/dio.dart';
import 'package:ride_app/src/features/hub/model/reservation_model.dart';
import 'package:ride_app/core/service/coreService.dart';

import '../confige/header.dart';
import '../model/handling_model.dart';

abstract class ReservationService extends Coreservice{
  Future<ResultModel>createReservation();

}
class ReservationImp extends ReservationService{
  @override
  Future<ResultModel> createReservation() async{
       try{
      response =await dio.get(baseUrl+"reservation",options:HeaderConfig.getHeader());
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

}
 