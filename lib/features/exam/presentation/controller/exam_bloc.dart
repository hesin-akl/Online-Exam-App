
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:online_exam_app/features/exam/data/models/response/subject_response.dart';

import '../../domain/use_case/get_all_subject_use_case.dart' show GetAllSubjectUseCase;

part 'exam_event.dart';
part 'exam_state.dart';

class ExamBloc extends Bloc<ExamEvent, ExamState> {
  GetAllSubjectUseCase _getAllSubjectUseCase;
  List<Subjects>subjects=[];
  ExamBloc(this._getAllSubjectUseCase) : super(ExamState()) {
    on<ExamEvent>(_getAllSubjects);
  }
  Future<void> _getAllSubjects(ExamEvent event, Emitter<ExamState> emit) async {
  emit(state.copyWith(
    isLoadingSubject: true
  ));
//  subjects=await _getAllSubjectUseCase.getAllSubjects() ;

  }
}
