import '../../../../core/failure/api_results.dart' show ApiResults;
import '../entity/subject_entity.dart';

abstract interface class ExamRepo{
  Future<ApiResults<List<SubjectEntity>>>getAllSubjects(String token);
}