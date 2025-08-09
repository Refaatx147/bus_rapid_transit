import 'package:bus_rapid_transit/core/errors/failure.dart';
import 'package:bus_rapid_transit/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
 Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }
  
  );

  Future<Either<Failure, UserEntity>> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String gender,
    required DateTime? dateOfBirth,
  });

Future<Either<Failure, void>> resetPassword({
    required String email,
  }
  
  );

Future<bool> isLoggedIn();

  // Add other methods as needed

 
}