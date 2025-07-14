import 'package:injectable/injectable.dart';
import 'package:online_exam_app/core/network/api_service.dart';
import 'package:online_exam_app/features/Auth/data/dataSource/auth_remote_data_source.dart';
import 'package:online_exam_app/features/Auth/data/models/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/user_model.dart';

@LazySingleton(as: AuthRemoteDataSource)


class RemoteDataSourceImpl implements AuthRemoteDataSource {



  final ApiService _apiService;

  RemoteDataSourceImpl(this._apiService);



  @override


  Future<UserModel> signUp(RegisterRequest request) async {


    return await _apiService.signUp(request);


    
  }
}
