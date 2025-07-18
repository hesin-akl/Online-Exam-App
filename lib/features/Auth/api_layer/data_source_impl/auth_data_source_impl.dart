import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/api_layer/api_service/api_service.dart';
import 'package:online_exam_app/features/Auth/data/models/request/login_request.dart';
import 'package:online_exam_app/features/Auth/data/models/request/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/response/auth_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/forget_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/reset_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/verfiy_password_response.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/error/server_failure.dart';
import '../../data/data_source/auth_data_source.dart';
import '../../data/models/request/forget_password_request.dart';
import '../../data/models/request/reset_password_request.dart';
import '../../data/models/request/verfiy_password_request.dart';
@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource{
 final ApiService _apiService;

  AuthDataSourceImpl(this._apiService);
  @override
  Future<Either<Failure,AuthResponse>>login(LoginRequest request) async {
try{

  var response=await _apiService.login(request);
  if(response.message=="success"){

    print("Request Email: ${request.email}");
    print("Request Password: ${request.password}");
    return right(response);
  }
else{
  return left(ServerFailure(message: response.message!));
  }
}

on ServerException catch(error){
  print(error.toString());
  return left(ServerFailure(message: error.errorMessageModel.message));

}
  }

  @override
  Future<Either<Failure, ForgetPasswordResponse>> forgetPassword
      (ForgetPasswordRequest request) async{
  try{
   var response= await _apiService.forgetPassword(request);
   if(response.message=="success"){
     return right(response);
   }else{
     return left(ServerFailure(message: response.message!));
   }
  }on ServerException catch(error){
    print( "error in forget password${error.toString()}");
    return left(ServerFailure(message:error.toString()));
  }
  }

  @override
  Future<Either<Failure, VerfiyPasswordResponse>> verfiyPassword
      (VerfiyPasswordRequest request) async {
    // TODO: implement verfiyPassword
   try{
     var response=await _apiService.verfiyPassword(request);
     if(response.status=="Success"){
       return right(response);
     }else{
       return left(ServerFailure(message:"Code is not correct" ));
     }
   }on ServerException catch(error){
     return left(ServerFailure(message:error.errorMessageModel.message! ));
   }
  }

  @override
  Future<Either<Failure, ResetPasswordResponse>>
  resetPassword(  ResetPasswordRequest request) async {
try{
  final response=await _apiService.resetPassword(request);
  if(response.message=="success"){
    return right(response);
  }else{
    return left(ServerFailure(message: response.message!));
  }
}on ServerException catch(error){
  return left(ServerFailure(message: error.errorMessageModel.message));
}
  }

  @override
  Future<Either<Failure, AuthResponse>> register(RegisterRequest request)async {
    try{
      final response=await _apiService.register(request);
      if(response.message=="success"){

        return right(response);
      }else{
        return left(ServerFailure(message: response.message!));
      }
    }on ServerException catch(error){
      return left(ServerFailure(message: error.toString()));

    }
  }

}
