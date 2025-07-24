import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/response/subject_response.dart';

abstract class ExamRepo{
  Future<Either<Failure, SubjectResponse>> getAllSubjects();
}