import 'package:dio/dio.dart';
import 'package:ride_app/core/confige/header.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/coreService.dart';
import 'package:ride_app/src/features/offer/model/offermodel.dart';

abstract class OfferService extends Coreservice {
  Future<ResultModel> getOffer();
}

class OfferServiceImp extends OfferService {
  @override
  Future<ResultModel> getOffer() async {
    try {
      response = await dio.get(baseUrl + '/bicycle/discountBicycles',
          options: HeaderConfig.getHeader());
      List data = response.data['body'];
      print(data);
      List<OfferModel> offer = List.generate(
          data.length, (index) => OfferModel.fromMap(data[index]));
      print(response.statusCode);
      if (response.statusCode == 200) {
        return ListOf(data: offer);
      } else {
        return ErrorModel();
      }
    } on DioException catch (e) {
      return ExceptionModel(message: e.message);
    }
  }
}
