import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/response/forget_password_response.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/request/forget_password_request.dart';
import '../repo/auth_repo.dart';
@Injectable()
class ForgetPasswordUseCase{
  final AuthRepo _authRepo;
  ForgetPasswordUseCase(this._authRepo);
  Future<Either<Failure, ForgetPasswordResponse>>
  forgetPassword(ForgetPasswordRequest request) async =>
      await _authRepo.forgetPassword(request);
}