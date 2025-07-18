import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/features/Auth/data/models/response/verfiy_password_response.dart';
import 'package:online_exam_app/features/Auth/presentation/controller/forget_password_cubit/forget_password_state.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/request/verfiy_password_request.dart';
import '../repo/auth_repo.dart';

@Injectable()
class VerfiyPasswordUseCase {
  final AuthRepo _authRepo;
  VerfiyPasswordUseCase(this._authRepo);

  Future<Either<Failure, VerfiyPasswordResponse>> verfiyPassword
      (VerfiyPasswordRequest request) async =>
      await _authRepo.verfiyPassword(request);
}