import 'package:bus_rapid_transit/core/errors/failure.dart';
import 'package:bus_rapid_transit/features/auth/data/datasources/local_data_source/auth_local_data_source.dart';
import 'package:bus_rapid_transit/features/auth/data/datasources/remote_data_source/auth_remote_data_source.dart';
import 'package:bus_rapid_transit/features/auth/domain/entities/user_entity.dart';
import 'package:bus_rapid_transit/features/auth/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl implements AuthRepo {

final AuthRemoteDataSource _authRemoteDataSource;
final AuthLocalDataSource _authLocalDataSource;

  AuthRepoImpl(this._authRemoteDataSource, this._authLocalDataSource);

  @override
  Future<Either<Failure, UserEntity>> login({required String email, required String password})async {
    try {
      final userModel = await _authRemoteDataSource.login(email: email, password: password);
       final userEntity = userModel.toEntity();
      await _authLocalDataSource.setIsLoggedIn(true);
      return Right(userEntity);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(errMessage: e.message.toString()));
    }on FirebaseException catch (e)
    {
      return Left(Failure(errMessage: e.message.toString()));
    } 
    catch (error) {
      return Left(Failure(  errMessage: error.toString()));
    }
  }
    

  
  @override
  Future<Either<Failure, UserEntity>> signUp({required String email, required String password, required String firstName, required String lastName, required String gender, required DateTime? dateOfBirth}) async{


    try{
      final userModel =await  _authRemoteDataSource.signUp(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        gender: gender,
        dateOfBirth: dateOfBirth!,

      );
      final userEntity = userModel.toEntity();
      return Right(userEntity);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(errMessage: e.message ?? "Authentication failed"));
    } on FirebaseException catch (e) {
      return Left(Failure(errMessage: e.message ?? "Firebase error"));
    } catch (e) {
      return Left(Failure(errMessage: e.toString()));
}
  }

  @override
Future<Either<Failure, Unit>> resetPassword({required String email}) async {
  
try {
    await _authRemoteDataSource.resetPassword(email: email);
    return const Right(unit);
  } on FirebaseAuthException catch (e) {
    return Left(Failure(errMessage: e.message ?? "Authentication error"));
  } on FirebaseException catch (e) {
    return Left(Failure(errMessage: e.message ?? "Firebase error"));
  } catch (e) {
    return Left(Failure(errMessage: e.toString()));
  }
}


@override
Future<bool> isLoggedIn() async {
  return await _authLocalDataSource.getIsLoggedIn();
}

}
