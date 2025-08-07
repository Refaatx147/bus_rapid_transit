import 'package:bus_rapid_transit/core/errors/failure.dart';
import 'package:bus_rapid_transit/features/auth/domain/entities/user_entity.dart';
import 'package:bus_rapid_transit/features/auth/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';

class SignupUseCase {

  final AuthRepo _authRepository;

  SignupUseCase(this._authRepository);

  Future<Either<Failure, UserEntity>> callSignUp(
     String email,
     String password,
     String firstName,
     String lastName,
     String gender,
     DateTime? dateOfBirth,
  ) {
    return  _authRepository.signUp(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      dateOfBirth: dateOfBirth,
    );
  }
}