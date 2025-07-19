import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioModuel {
  @lazySingleton
  Dio provideDio(PrettyDioLogger logger) {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: 'https://exam.elevateegy.com/',
        connectTimeout: const Duration(seconds: 15),

        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'authorization': 'Bearer  your_token_here',
        },
      ),
    );
    dio.interceptors.add(logger);
    return dio;
  }

  @lazySingleton
  PrettyDioLogger providePrettyDioLogger() {
    return PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: false,
      responseBody: true,
      error: true,
      compact: true,
    );
  }
}
