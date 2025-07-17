part of 'signup_cubit.dart';

sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserModel? user;
  final String? message ;
  SignupSuccess({this.user, this.message});
}

final class SignupFailure extends SignupState {
  final String errMessage;
  SignupFailure({required this.errMessage});
}
final class SignupFormChanged extends SignupState {}
