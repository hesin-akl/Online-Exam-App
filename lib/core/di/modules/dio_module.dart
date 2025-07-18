// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:online_exam_app/core/utils/app_constants.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
//
//
// @module
// abstract class DioModuel {
//   /// Injects PrettyDioLogger for logging all Dio activity
//   @singleton
//   PrettyDioLogger providePrettyDioLogger() {
//     return PrettyDioLogger(
//       requestHeader: true,
//       requestBody: true,
//       responseHeader: false,
//       responseBody: true,
//       error: true,
//       compact: true,
//     );
//   }
//
//
//   @singleton
//   Dio provideDio(PrettyDioLogger logger) {
//     final dio = Dio(
//       BaseOptions(
// receiveDataWhenStatusError: true,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//       ),
//     );
//
//     dio.interceptors.add(logger);
//     return dio;
//   }
// }
//
//
//
