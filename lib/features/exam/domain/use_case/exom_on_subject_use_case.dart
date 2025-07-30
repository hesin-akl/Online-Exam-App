import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/domain/repos/explore_repo.dart';

import '../entity/exam_entity.dart';

@injectable
class ExamOnSubjectUseCase{
  ExploreRepo _exploreRepo;
  ExamOnSubjectUseCase(this._exploreRepo);
  Future<ApiResults<List<ExamEntity>>> examOnSubjects(String id,String token)async{
    return await _exploreRepo.examOnSubjects(id, token);
  }
}