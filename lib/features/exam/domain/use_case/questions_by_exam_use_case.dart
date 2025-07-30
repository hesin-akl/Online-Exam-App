import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/exam/domain/entity/question_entity.dart';

import '../repos/explore_repo.dart' show ExploreRepo;

@injectable
class QuestionsByExamUseCase{
  ExploreRepo _exploreRepo;
  QuestionsByExamUseCase(this._exploreRepo);
  Future<ApiResults<List<QuestionEntity>>>
  questionsByExam(String id,
      String token)async{
    return await _exploreRepo.questionsByExam(id, token);
  }
}