import '../../../data/models/response/auth_response.dart';

abstract class RegisterState{}
class RegisterInitial extends RegisterState{}
class RegisterLoading extends RegisterState{}
class RegisterSuccess extends RegisterState{
  final AuthResponse authResponse;

  RegisterSuccess({required this.authResponse});
}
class RegisterError extends RegisterState{
  final String error;

  RegisterError({required this.error});
}