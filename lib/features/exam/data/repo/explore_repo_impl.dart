import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/data/data_source/explore_data_source.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/question_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';
import 'package:online_exam_app/features/exam/domain/repos/explore_repo.dart';
@Injectable(as:ExploreRepo )
class ExploreRepoImpl implements ExploreRepo{
  ExploreRemoteDataSource _examRemoteDataSource;
  ExploreRepoImpl(this._examRemoteDataSource);
  @override
  Future<ApiResults<List<SubjectEntity>>> getAllSubjects(String token)async {
   return await _examRemoteDataSource.getAllSubjects(token);
  }

  @override
  Future<ApiResults<List<ExamEntity>>> examOnSubjects(String id, String token) async {
    // TODO: implement examOnSubjects
    return await _examRemoteDataSource.examOnSubjects(id, token);
  }

  @override
  Future<ApiResults<List<QuestionEntity>>> 
  questionsByExam(String id, String token) async{
    // TODO: implement questionsByExam
   return await _examRemoteDataSource.questionsByExam(id, token);
  }

}