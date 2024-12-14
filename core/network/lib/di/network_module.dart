import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// Network DI module
@module
abstract class NetworkModule {

  @singleton
  Dio provideDio() {
    final dio = Dio()
      ..options = BaseOptions(
          baseUrl: "",
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10));
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ));
    return dio;
  }
}
