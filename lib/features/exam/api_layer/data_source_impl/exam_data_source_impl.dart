import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/error/failure.dart';
import 'package:online_exam_app/features/exam/api_layer/api_services_exam.dart';
import 'package:online_exam_app/features/exam/data/data_source/exam_data_source.dart';
import 'package:online_exam_app/features/exam/data/models/response/subject_response.dart';
@Injectable(as:ExamDataSource )
class ExamDataSourceImpl implements ExamDataSource{
 ApiServicesExam _apiServicesExam;
 ExamDataSourceImpl(this._apiServicesExam);
  @override
  Future<Either<Failure, SubjectResponse>> getAllSubjects()async {

    try{
     final response=await _apiServicesExam.getAllSubjects();
    if(response.message=="success"){
     return right(response);
    }else{
     return left(ServerFailure(message: response.message!));
    }

   }catch(error){
     return left(ServerFailure(message: error.toString()));
    }
  }

}