import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/error/failure.dart';
import 'package:online_exam_app/features/exam/data/models/response/subject_response.dart';
abstract class ExamDataSource{
  Future<Either<Failure,SubjectResponse>>getAllSubjects();
}