import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/error/failure.dart';
import 'package:online_exam_app/features/exam/data/data_source/exam_data_source.dart';
import 'package:online_exam_app/features/exam/data/models/response/subject_response.dart';
import 'package:online_exam_app/features/exam/domain/repos/exam_repo.dart';
@Injectable(as:ExamRepo )
class ExamRepoImpl implements ExamRepo{
  ExamDataSource _examDataSource;

  ExamRepoImpl(this._examDataSource);

  @override
  Future<Either<Failure, SubjectResponse>> getAllSubjects() {
    return _examDataSource.getAllSubjects();

  }

}