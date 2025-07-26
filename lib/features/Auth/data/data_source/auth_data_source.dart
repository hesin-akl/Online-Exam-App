import 'package:online_exam_app/features/Auth/data/models/request/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/response/forget_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/reset_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/verfiy_password_response.dart';

import '../../../../core/error/failure.dart';

import '../models/request/forget_password_request.dart';
import '../models/request/login_request.dart';
import '../models/request/reset_password_request.dart';
import '../models/request/verfiy_password_request.dart';
import '../models/response/auth_response.dart';
import 'package:dartz/dartz.dart';
abstract class AuthDataSource{
  Future <Either<Failure,AuthResponse>>register(RegisterRequest request);
  Future <Either<Failure,AuthResponse>>login(LoginRequest request);
  Future <Either<Failure,ForgetPasswordResponse>> forgetPassword(ForgetPasswordRequest request);
  Future <Either<Failure,VerfiyPasswordResponse>> verfiyPassword(VerfiyPasswordRequest request);
  Future <Either<Failure,ResetPasswordResponse>> resetPassword(  ResetPasswordRequest request);
}