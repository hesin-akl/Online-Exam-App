import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/error/failure.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/Auth/api_layer/api_service/api_service.dart';
import 'package:online_exam_app/features/exam/data/data_source/explore_data_source.dart';
import 'package:online_exam_app/features/exam/domain/entity/exam_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/question_entity.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';
@Injectable(as:ExploreRemoteDataSource )
class ExploreRemoteDataSourceImpl implements ExploreRemoteDataSource{
 ApiService _apiService;

  ExploreRemoteDataSourceImpl(this._apiService);
  @override
  Future<ApiResults<List<SubjectEntity>>> getAllSubjects(String token) async {
   try{
final response=await _apiService.getAllSubjects(token);
List<SubjectEntity>subjects=response.subjects?.map((sub)=>
    sub.toEntity()).toList() ??[];

return ApiSuccessResults(subjects);
   }on ServerFailure catch(error){
return ApiErrorResults(error.toString());
   }
  }

  @override
  Future<ApiResults<List<ExamEntity>>>
  examOnSubjects(String id, String token) async{
    // TODO: implement examOnSubjects
  try{
    final response=await _apiService.ExamBySubjects(id, token);
    List<ExamEntity>exams=response.exams?.map((e)=>e.toEntity()).toList()
        ??[];
    return ApiSuccessResults(exams);
  }
 on ServerFailure catch(error){
   return ApiErrorResults(error.toString());
 }
  }

  @override
  Future<ApiResults<List<QuestionEntity>>> questionsByExam
      (String id, String token) async{
   try{
     final response=await _apiService.questionsByExam(id, token);

 List<QuestionEntity>questions=response.questions?.map((e)=>e.toEntity()).toList()??[];

 return ApiSuccessResults(questions);


   }on ServerFailure catch(error){
     print("error in get  questions${error.toString()}");
return ApiErrorResults(error.toString());
   }
  }

}