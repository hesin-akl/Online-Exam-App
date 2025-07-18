import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/request/register_request.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/response/auth_response.dart';
import '../repo/auth_repo.dart';

@Injectable()
class RegisterUseCase {
  final AuthRepo _authRepo;
  RegisterUseCase(this._authRepo);

  Future<Either<Failure, AuthResponse>> register(RegisterRequest request) async =>
      await _authRepo.register(request);
}