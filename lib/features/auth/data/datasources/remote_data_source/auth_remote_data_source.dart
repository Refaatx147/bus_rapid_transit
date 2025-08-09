import 'package:bus_rapid_transit/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String email,
    required String password,
  });

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String gender,
    required DateTime dateOfBirth ,
  });

  Future<void> resetPassword({
    required String email,
  });
}
