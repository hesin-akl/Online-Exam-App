import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/response/reset_password_response.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/request/reset_password_request.dart';
import '../../data/models/response/auth_response.dart';
import '../repo/auth_repo.dart';

@Injectable()
class ResetPasswordUseCase {
  final AuthRepo _authRepo;
  ResetPasswordUseCase(this._authRepo);

  Future<Either<Failure, ResetPasswordResponse>> resetPassword
      (  ResetPasswordRequest request) async =>
      await _authRepo.resetPassword(request);
}