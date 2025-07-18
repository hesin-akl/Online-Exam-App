import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/request/login_request.dart';
import '../../data/models/response/auth_response.dart';
import '../repo/auth_repo.dart';
@Injectable()
class LoginUseCase {
  final AuthRepo _authRepo;
  LoginUseCase(this._authRepo);

  Future<Either<Failure, AuthResponse>> login(LoginRequest request) async =>
      await _authRepo.login(request);
}