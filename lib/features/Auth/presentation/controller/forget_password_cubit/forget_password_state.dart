
import 'package:online_exam_app/features/Auth/data/models/response/auth_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/forget_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/reset_password_response.dart';
import 'package:online_exam_app/features/Auth/data/models/response/verfiy_password_response.dart';

abstract class ForgetPasswordState {}
class ForgetPasswordLoading extends ForgetPasswordState{}
class ForgetPasswordInitial extends ForgetPasswordState{}
class ForgetPasswordSuccess extends ForgetPasswordState{
  final ForgetPasswordResponse response;

  ForgetPasswordSuccess({required this.response});
}
class ForgetPasswordError extends ForgetPasswordState{
  final String error;

  ForgetPasswordError({required this.error});
}
class verfiyPasswordLoading extends ForgetPasswordState{}
class verfiyPasswordSuccess extends ForgetPasswordState{
  final VerfiyPasswordResponse response;

  verfiyPasswordSuccess({required this.response});
}
class verfiyPasswordError extends ForgetPasswordState{
  final String error;

  verfiyPasswordError({required this.error});
}
class ResetPasswordLoading extends ForgetPasswordState{}
class ResetPasswordSuccess extends ForgetPasswordState{
  final ResetPasswordResponse response;

  ResetPasswordSuccess({required this.response});
}
class ResetPasswordError extends ForgetPasswordState{
  final String error;

  ResetPasswordError({required this.error});
}