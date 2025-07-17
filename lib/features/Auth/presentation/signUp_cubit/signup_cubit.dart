import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/user_model.dart';
import 'package:online_exam_app/features/Auth/domain/useCases/sign_up_usecase.dart';
import 'package:dio/dio.dart';

part 'signup_state.dart';

@injectable
class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signUpUsecase) : super(SignupInitial());

  final SignUpUsecase _signUpUsecase;

  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();

  bool get isFormValid {
    return usernameController.text.isNotEmpty &&
        firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        phoneController.text.isNotEmpty;
  }

  Future<void> signUp(RegisterRequest request) async {
    emit(SignupLoading());
    try {
      final user = await _signUpUsecase(request);
      disposeControllers();
      emit(SignupSuccess(user: user));
      print('User signed up successfully: ${user.userName}');
    } catch (e) {
      if (e is DioException) {
        try {
          final data = e.response?.data;
          String errorMessage;

          if (data is Map<String, dynamic> && data['message'] is String) {
            errorMessage = data['message'];
          } else if (e.message != null) {
            errorMessage = e.message!;
          } else {
            errorMessage = 'An unexpected error occurred';
          }

          emit(SignupFailure(errMessage: errorMessage));
        } catch (_) {
          emit(SignupFailure(errMessage: 'Something went wrong'));
        }
      } else {
        emit(SignupSuccess(message: 'Successfully registered'));
      }
    }
  }

  void submit() {
    if (formKey.currentState!.validate()) {
      final request = RegisterRequest(
        username: usernameController.text.trim(),
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        phone: phoneController.text.trim(),
        rePassword: confirmPasswordController.text.trim(),
      );
      signUp(request);
    }
  }

  void onFieldChanged() {
    emit(SignupFormChanged());
  }

  void disposeControllers() {
    usernameController.clear();
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    phoneController.clear();
  }
}
