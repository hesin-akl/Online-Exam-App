import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/error/failure.dart';
import 'package:online_exam_app/core/failure/api_results.dart';
import 'package:online_exam_app/features/Auth/api_layer/api_service/api_service.dart';
import 'package:online_exam_app/features/exam/data/data_source/exam_data_source.dart';
import 'package:online_exam_app/features/exam/domain/entity/subject_entity.dart';
@Injectable(as:ExamRemoteDataSource )
class ExamRemoteDataSourceImpl implements ExamRemoteDataSource{
 ApiService _apiService;

  ExamRemoteDataSourceImpl(this._apiService);
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

}