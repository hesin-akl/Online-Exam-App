import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/data/data_source/exam_data_source.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';
import 'package:online_exam_app/features/exam/domain/repos/exam_repo.dart';
@Injectable(as:ExamRepo )
class ExamRepoImpl implements ExamRepo{
  ExamRemoteDataSource _examRemoteDataSource;
  ExamRepoImpl(this._examRemoteDataSource);
  @override
  Future<ApiResults<List<SubjectEntity>>> getAllSubjects(String token)async {
   return await _examRemoteDataSource.getAllSubjects(token);
  }

}