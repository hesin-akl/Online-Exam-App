import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/dataSource/auth_remote_data_source.dart';
import 'package:online_exam_app/features/Auth/data/models/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/user_model.dart';
import 'package:online_exam_app/features/Auth/domain/repository/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {


  final AuthRemoteDataSource _remoteDataSource;


  AuthRepositoryImpl(this._remoteDataSource);


  @override


  Future<UserModel> signUp(RegisterRequest request) async {


    return await _remoteDataSource.signUp(request);



  }




  
}
