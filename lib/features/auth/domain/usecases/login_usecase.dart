import 'package:bus_rapid_transit/core/errors/failure.dart';
import 'package:bus_rapid_transit/features/auth/domain/entities/user_entity.dart';
import 'package:bus_rapid_transit/features/auth/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {

  final AuthRepo _authRepository;

  LoginUseCase(this._authRepository);

  Future<Either<Failure, UserEntity>> callLogin(
     String email,
     String password,
  )  {
    return  _authRepository.login(
      email: email,
      password: password,
    );
  }
}
