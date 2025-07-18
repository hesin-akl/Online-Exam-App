import 'package:online_exam_app/features/Auth/data/models/response/auth_response.dart';

abstract class LoginStates{}
class LoginLoading extends LoginStates{}
class LoginInitial extends LoginStates{}
class LoginSuccess extends LoginStates{
final AuthResponse authResponse;

  LoginSuccess({required this.authResponse});
}
class LoginError extends LoginStates{
  final String error;

  LoginError({required this.error});
}