import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/exam/data/models/response/subject_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../core/utils/app_constants.dart';
part 'api_services_exam.g.dart';
@singleton
@injectable
@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiServicesExam{
  @factoryMethod
factory  ApiServicesExam(Dio dio)=_ApiServicesExam;
@GET(AppConstants.getAllSubjectsEndPoint)
  Future<SubjectResponse>getAllSubjects();

}