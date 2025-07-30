import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/question_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';

abstract interface class ExploreRemoteDataSource{
  Future<ApiResults<List<SubjectEntity>>>getAllSubjects(String token);
  Future<ApiResults<List<ExamEntity>>>examOnSubjects(String id,
      String token);
  Future<ApiResults<List<QuestionEntity>>>questionsByExam(String id,
      String token);
}