import 'package:dio/dio.dart';

class NetworkException implements Exception {
  late Response? resp;

  NetworkException(this.resp);
}
