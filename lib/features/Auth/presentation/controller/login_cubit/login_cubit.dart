import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/request/login_request.dart';

import '../../../domain/use_case/login_use_case.dart';
import 'login_state.dart';
@injectable
class LoginCubit extends Cubit<LoginStates>{
  LoginCubit(this.loginUseCase):super(LoginInitial());
  LoginUseCase loginUseCase;
Future<void>login(LoginRequest request)async{
emit(LoginLoading());
final result=await loginUseCase.login(request);
result.fold((l)=>emit(LoginError(error: l.message)),
    (r)=>emit(LoginSuccess(authResponse: r)));
}

}