import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/exam/domain/repos/explore_repo.dart';

import '../../../../core/failure/api_results.dart';
import '../entity/subject_entity.dart';

@injectable
class GetAllSubjectsUseCase{
  ExploreRepo _examRepo;
  GetAllSubjectsUseCase(this._examRepo);
  Future<ApiResults<List<SubjectEntity>>>
  getAllSubjects(String token)async{
return await _examRepo.getAllSubjects(token);
  }
}