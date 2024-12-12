import 'package:dio/dio.dart';
import 'package:ride_app/src/features/transport/model/reservation_model.dart';
import 'package:ride_app/core/service/coreService.dart';

import '../../../confige/header.dart';
import '../../../model/handling_model.dart';

 import 'package:dio/dio.dart';

abstract class ReservationService extends Coreservice{
  Future<ResultModel>createReservation(ReservationModel reservationModel);
  Future<ResultModel>getReservation();

}
class ReservationImp extends ReservationService{
  @override
  Future<ResultModel> createReservation(ReservationModel reservationModel) async{
       try{
      response =await dio.post(baseUrl+"reservation",options:HeaderConfig.getHeader(),data: reservationModel.toMap());
      print(response.statusCode);
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
  Future<ResultModel> getReservation() async{
       try{
      response =await dio.get(baseUrl+"reservation",options:HeaderConfig.getHeader());
      print(response.data);
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
 

abstract class Service {
  Dio dio = Dio();
  late Response response;
}

abstract class ReeservationService extends Service {
  String baseUrl = "";
  Future<bool>createReservation(ReservationModel reservationModel);
}

class ReservationServiceImp extends ReeservationService {
  @override
  Future<bool>createReservation(ReservationModel reservationModel)async{
    try {
      response = await dio.post(baseUrl, data: reservationModel.toMap());
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}