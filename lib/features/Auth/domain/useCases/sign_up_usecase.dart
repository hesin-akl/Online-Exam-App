import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/register_request.dart';
import 'package:online_exam_app/features/Auth/data/models/user_model.dart';
import 'package:online_exam_app/features/Auth/domain/repository/auth_repository.dart';

@injectable
class SignUpUsecase {
  final AuthRepository _authRepository;

  SignUpUsecase(this._authRepository);

  Future<UserModel> call(RegisterRequest request) async {
    return await _authRepository.signUp(request);
  }
}
