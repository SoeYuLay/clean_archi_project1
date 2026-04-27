import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/features/auth/domain/entities/user.dart';
import 'package:either_dart/either.dart';

abstract class AuthRepository{
  Future<Either<Failure, UserEntity>> getCurrentUser();
  Future<Either<Failure,UserEntity>> signUp(String email, String password);
  Future<Either<Failure, UserEntity>> signIn(String email, String password);
  Future<Either<Failure,void>> resetPassword(String email);
  Future<Either<Failure,void>> signOut();
  Future<Either<Failure, UserEntity>> signUpWithGoogle();
}