import 'package:online_exam_app/features/Auth/data/models/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/user_model.dart';

abstract class AuthRepository {
  Future<UserModel> signUp(RegisterRequest request);
}