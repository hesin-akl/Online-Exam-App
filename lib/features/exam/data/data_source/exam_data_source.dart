import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';

abstract interface class ExamRemoteDataSource{
  Future<ApiResults<List<SubjectEntity>>>getAllSubjects(String token);
}