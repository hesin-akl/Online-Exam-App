import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/utils/app_constants.dart';
import 'package:online_exam_app/features/Auth/data/models/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@injectable
@lazySingleton
@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiService {
  @factoryMethod
  factory ApiService(Dio dio) = _ApiService;

  @POST(AppConstants.signUpEndpoint)
  Future<UserModel> signUp(@Body() RegisterRequest request);
}
