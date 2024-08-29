import 'package:dio/dio.dart';
import 'package:ride_app/core/confige/header.dart';
import 'package:ride_app/core/confige/hive_init.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/coreService.dart';
import 'package:ride_app/src/features/wallet/model/add_money_model.dart';
import 'package:ride_app/src/features/wallet/model/new_wallet_model.dart';

abstract class CreateWalletService extends Coreservice {
  Future<ResultModel> createWallet(NewWalletModel newwallet);
  Future<ResultModel> getMyWalletInfo();
  Future<ResultModel> addMoney(AddMoneyModel addMoney);
  Future<ResultModel> getValidCode();
}

class CreateWalletServiceImp extends CreateWalletService {
  @override
  Future<ResultModel> createWallet(NewWalletModel newwallet) async {
    try {
      response = await dio.post(baseUrl + 'wallet',
          data: newwallet.toMap(), options: HeaderConfig.getHeader());
      print(response.statusCode);
      if (response.statusCode == 201) {
        int balance = response.data['body']['balance'];
        print(balance);
        await box!.put('amount', balance);
        return DataSuccess();
      } else {
        return ErrorModel();
      }
    } on DioException catch (e) {
      print(e.message);

      return ExceptionModel(message: e.message);
    }
  }

  @override
  Future<ResultModel> getMyWalletInfo() async {
    try {
      response =
          await dio.get(baseUrl + 'wallet', options: HeaderConfig.getHeader());
      print(response);
      if (response.statusCode == 200) {
        int balance = response.data['balance'];
        await box!.put('balance', balance);
        return DataSuccess();
      } else
        return ErrorModel();
    } on DioException catch (e) {
      print(e.message);
      return ExceptionModel(message: e.message);
    }
  }

  @override
  Future<ResultModel> addMoney(AddMoneyModel addMoney) async {
    try {
      response = await dio.put(baseUrl + 'wallet',
          data: addMoney.toMap(), options: HeaderConfig.getHeader());
      if (response.statusCode == 202) {
        return DataSuccess();
      } else
        return ErrorModel();
    } on DioException catch (e) {
      print(e.message);
      return ExceptionModel(message: e.message);
    }
  }

  @override
  Future<ResultModel> getValidCode() async {
    try {
      response = await dio.get(baseUrl + 'wallet/All-valid-codes',
          options: HeaderConfig.getHeader());
      if (response.statusCode == 200) {
        print(response.statusCode);
        List info = response.data['body'];
        String code = info[0]['code'];
      //  int amount = info[0]['amount'];
        // print(amount);
        // await box!.put('amount', amount);
        print(code);
        await box!.put('code', code);
        return DataSuccess();
      } else
        return ErrorModel();
    } on DioException catch (e) {
      return ExceptionModel(message: e.message);
    }
  }
}
