import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/utils/app_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
@module
abstract class DioModule {
  @lazySingleton
  Dio provideDio(PrettyDioLogger logger) {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: const Duration(seconds: 15),

        receiveTimeout: const Duration(seconds: 15),
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (AppConstants.userToken != null) {
            // ✅ إرسال التوكن بنفس شكل Postman
            options.headers[AppConstants.token] = AppConstants.userToken;
          }
          return handler.next(options);
        },
      ),
    );
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