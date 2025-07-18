import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:online_exam_app/features/Auth/data/models/request/login_request.dart';
import 'package:online_exam_app/features/Auth/data/models/request/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/response/auth_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/forget_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/reset_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/verfiy_password_response.dart';
import 'package:online_exam_app/features/Auth/domain/repo/auth_repo.dart';

import '../../../../core/error/failure.dart';
import '../models/request/forget_password_request.dart';
import '../models/request/reset_password_request.dart';
import '../models/request/verfiy_password_request.dart';
@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo{
  AuthDataSource _authDataSource;
  AuthRepoImpl(this._authDataSource);
  @override
  Future<Either<Failure,AuthResponse>> login(LoginRequest request)
  async {
    // TODO: implement login
    return await _authDataSource.login(request);
  }

  @override
  Future<Either<Failure, ForgetPasswordResponse>> forgetPassword
      (ForgetPasswordRequest request)async {
    // TODO: implement forgetPassword
    return await _authDataSource.forgetPassword(request);
  }

  @override
  Future<Either<Failure, VerfiyPasswordResponse>> verfiyPassword(
      VerfiyPasswordRequest request) async {
    // TODO: implement verfiyPassword
   return await _authDataSource.verfiyPassword(request);
  }

  @override
  Future<Either<Failure, ResetPasswordResponse>>
  resetPassword(  ResetPasswordRequest request)async {
    // TODO: implement resetPassword
   return await _authDataSource.resetPassword(request);
  }

  @override
  Future<Either<Failure, AuthResponse>> register(RegisterRequest request) async{
    // TODO: implement register
    return await _authDataSource.register(request);
  }
  
}