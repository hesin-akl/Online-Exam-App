import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/exam/data/models/response/subject_response.dart';
import 'package:online_exam_app/features/exam/domain/repos/exam_repo.dart';

import '../../../../core/error/failure.dart';
@injectable
class GetAllSubjectUseCase {
  ExamRepo _examRepo;
  GetAllSubjectUseCase(this._examRepo);
  Future<Either<Failure, SubjectResponse>>getAllSubjects()async{
    return await _examRepo.getAllSubjects();
  }
}