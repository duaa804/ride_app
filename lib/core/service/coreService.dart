import 'package:dio/dio.dart';

class Coreservice {
  Dio dio=Dio();
  String baseUrl="https://rideshare.devscape.online/api/v1";
  late Response response;
}