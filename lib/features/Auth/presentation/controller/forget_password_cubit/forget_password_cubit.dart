import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/domain/use_case/forget_password_use_case.dart';
import 'package:online_exam_app/features/Auth/domain/use_case/reset_password_use_case.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_state.dart';
import '../../../data/models/request/forget_password_request.dart';
import '../../../data/models/request/reset_password_request.dart';
import '../../../data/models/request/verfiy_password_request.dart';
import '../../../domain/use_case/verfiy_password.dart';

@injectable
@singleton
class ForgetPasswordCubit extends Cubit<ForgetPasswordState>{
  ForgetPasswordCubit(this._forgetPasswordUseCase,
      this._verfiyPasswordUseCase,
      this._resetPasswordUseCase):super(ForgetPasswordInitial());
  ForgetPasswordUseCase _forgetPasswordUseCase;
ResetPasswordUseCase _resetPasswordUseCase;
  VerfiyPasswordUseCase _verfiyPasswordUseCase;
  Future<void>forgetPassword(ForgetPasswordRequest request)async{
    emit(ForgetPasswordLoading());
    final result=await _forgetPasswordUseCase.
    forgetPassword(request);
    result.fold((l)=>emit(ForgetPasswordError(error: l.message)),
            (r)=>emit(ForgetPasswordSuccess(response: r)));

  }
  Future<void>resetPassword(  ResetPasswordRequest request)async{
    emit(ResetPasswordLoading());
    final result=await _resetPasswordUseCase.resetPassword(request) ;
    result.fold((l)=>emit(ResetPasswordError(error: l.message)),
        (r)=>emit(ResetPasswordSuccess(response:r )));
  }
  Future<void>verfiyPassword(VerfiyPasswordRequest request)async{
    emit(verfiyPasswordLoading());
    final result=await _verfiyPasswordUseCase.verfiyPassword(request);
    result.fold((l)=>emit(verfiyPasswordError(error: l.message)),
            (r)=>emit(verfiyPasswordSuccess(response:r )));
  }
}