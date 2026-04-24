import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/features/auth/data/datasources/remote/firebase_auth_datasource.dart';
import 'package:clean_archi_project1/features/auth/data/datasources/remote/models/userDto.dart';
import 'package:clean_archi_project1/features/auth/data/mapper/user_mapper.dart';
import 'package:clean_archi_project1/features/auth/domain/entities/user.dart';
import 'package:clean_archi_project1/features/auth/domain/repository/auth_repo.dart';
import 'package:either_dart/either.dart';

class AuthRepoImpl extends AuthRepository{
  FirebaseAuthDatasource _firebaseAuthDatasource;

  AuthRepoImpl(this._firebaseAuthDatasource);

  @override
  Future<Either<Failure,UserEntity>> getCurrentUser() async {
    try {
      final user = _firebaseAuthDatasource.getCurrentUser();
      if (user != null) {
        return Right(UserDto.fromFirebaseUser(user).toDomain());
      } else {
        return Left(AuthFailure('No user is currently signed in'));
      }
    } catch (e) {
      return Left(AuthFailure('Failed to get current user: $e'));
    }
  }

  @override
  Future<Either<Failure,void>> resetPassword(String email) async{
    try {
      return Right(await _firebaseAuthDatasource.sendPasswordResetEmail(email));
    } catch (e) {
      return Left(AuthFailure('Failed to send password reset email: $e'));
    }
  }

  @override
  Future<Either<Failure,UserEntity>> signIn(String email, String password) async {
    try{
      final user = await _firebaseAuthDatasource.signIn(email, password);
      if (user != null) {
        return Right(UserDto.fromFirebaseUser(user).toDomain());
      } else {
        return Left(AuthFailure('Invalid email or password'));
      }
    }catch (e){
      return Left(AuthFailure('Failed to sign in: $e'));
    }
  }

  @override
  Future<Either<Failure,void>> signOut() async{
    try {
      return Right(await _firebaseAuthDatasource.signOut());
    } catch (e) {
      return Left(AuthFailure('Failed to sign out: $e'));
    }
  }

  @override
  Future<Either<Failure,UserEntity>> signUp(String email, String password) async {
    try{
      final user = await _firebaseAuthDatasource.signUp(email, password);
    if (user != null) {
      return Right(UserDto.fromFirebaseUser(user).toDomain());
    } else {
      return Left(AuthFailure('Failed to sign up'));
    }
    }catch(e){
      return Left(AuthFailure('Failed to sign up: $e'));
    }
  }
  
}