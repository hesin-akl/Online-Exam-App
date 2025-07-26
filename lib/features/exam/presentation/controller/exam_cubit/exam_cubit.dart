import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';
import 'package:online_exam_app/features/exam/domain/use_case/get_all_subjects_use_case.dart';

part 'exam_state.dart';
@injectable

class ExamCubit extends Cubit<ExamState> {
  ExamCubit(this._getAllSubjectsUseCase) : super(ExamState());
GetAllSubjectsUseCase _getAllSubjectsUseCase;

  Future<void>
  getAllSubjects(String token)async{
    emit(state.copyWith(isLoadingSubject: true));
    final result= await _getAllSubjectsUseCase.getAllSubjects(token);
    switch(result){

      case ApiSuccessResults<List<SubjectEntity>>():
        emit(state.copyWith
          (isLoadingSubject: false,subjects: result.data));

      case ApiErrorResults<List<SubjectEntity>>():
        emit(state.copyWith
          (isLoadingSubject: false,errorMessageSubject: result.errorMessage));
    }
  }
}
