import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/request/register_request.dart';
import 'package:online_exam_app/features/Auth/domain/use_case/register_use_case.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/register_cubit/register_state.dart';
@injectable
class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit(this._registerUseCase):super(RegisterInitial());
  RegisterUseCase _registerUseCase;
  Future<void>register(RegisterRequest request)async{
    emit(RegisterLoading());
    final result=await _registerUseCase.register(request);
    result.fold((l)=>emit(RegisterError(error: l.message)),(r)=>
        emit(RegisterSuccess(authResponse: r)));
  }
}