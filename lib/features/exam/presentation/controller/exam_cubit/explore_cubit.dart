
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/question_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';
import 'package:online_exam_app/features/exam/domain/use_case/exom_on_subject_use_case.dart';
import 'package:online_exam_app/features/exam/domain/use_case/get_all_subjects_use_case.dart';
import 'package:online_exam_app/features/exam/domain/use_case/questions_by_exam_use_case.dart';

part 'explore_state.dart';
@injectable
class ExploreCubit extends Cubit<ExploreState> {
  ExploreCubit(this._getAllSubjectsUseCase,
      this._examOnSubjectUseCase,this._questionsByExamUseCase) : super(ExploreState());
GetAllSubjectsUseCase _getAllSubjectsUseCase;
ExamOnSubjectUseCase _examOnSubjectUseCase;
  QuestionsByExamUseCase _questionsByExamUseCase;
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
  Future<void> examOnSubjects(String id,String token) async {
    emit(state.copyWith(
        isLoadingexamOnSubjects:true,

    ));
    final result=await _examOnSubjectUseCase.examOnSubjects(id, token);
    switch(result){

      case ApiSuccessResults<List<ExamEntity>>():
       emit(state.copyWith(
         isLoadingexamOnSubjects:false,
         exams: result.data
       ));

      case ApiErrorResults<List<ExamEntity>>():
        emit(state.copyWith(
            isLoadingexamOnSubjects:false,
            errorMessageExams: result.errorMessage
        ));
    }
  }
  Future<void>questionsByExam(String id,
      String token)async{
emit(state.copyWith(
  isLoadingQuestionByexam: true
));
    final result=await
    _questionsByExamUseCase.questionsByExam(id, token);
switch(result){


  case ApiSuccessResults<List<QuestionEntity>>():
    emit(state.copyWith(
      isLoadingQuestionByexam: false,
      questions: result.data,
      errorMessagequestions: null,
    ));
  case ApiErrorResults<List<QuestionEntity>>():
    emit(state.copyWith(
        isLoadingQuestionByexam: false,
       errorMessagequestions: result.errorMessage
    ));
}
  }
}
