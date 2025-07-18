import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/request/login_request.dart';
import 'package:online_exam_app/features/Auth/data/models/request/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/response/auth_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/forget_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/reset_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/verfiy_password_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/utils/app_constants.dart';
import '../../data/models/request/forget_password_request.dart';
import '../../data/models/request/reset_password_request.dart';
import '../../data/models/request/verfiy_password_request.dart';
part'api_service.g.dart';
@singleton
@injectable
@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiService {
  @factoryMethod
  factory ApiService(Dio dio) = _ApiService;
  @POST(AppConstants.registerEndPoint)
  Future<AuthResponse>register(@Body()RegisterRequest request);
@POST(AppConstants.loginEndPoint)
  Future<AuthResponse>login(@Body()LoginRequest request);
  @POST(AppConstants.forgetPasswordEndPoint)
  Future<ForgetPasswordResponse>forgetPassword(@Body()
  ForgetPasswordRequest request);
  @POST(AppConstants.verfiyPasswordEndPoint)
  Future<VerfiyPasswordResponse>verfiyPassword(@Body()
  VerfiyPasswordRequest request);
  @PUT(AppConstants.resetPasswordEndPoint)
  Future<ResetPasswordResponse>resetPassword(@Body()
  ResetPasswordRequest request);
}


