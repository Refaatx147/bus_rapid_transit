import 'package:bus_rapid_transit/core/errors/failure.dart';
import 'package:bus_rapid_transit/features/auth/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';

class ResetPassword {
  final AuthRepo authRepo;

  ResetPassword(this.authRepo);

  Future<Either<Failure, void>> callResetPassword(String email) {
    return authRepo.resetPassword(email: email);
  }
}
