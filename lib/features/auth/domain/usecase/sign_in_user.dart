import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/features/auth/domain/entities/user.dart';
import 'package:clean_archi_project1/features/auth/domain/repository/auth_repo.dart';
import 'package:either_dart/either.dart';

class SignInUserUseCase {
  final AuthRepository authRepository;

  SignInUserUseCase(this.authRepository);

  Future<Either<Failure, UserEntity>> call (String email, String password) async{
    return await authRepository.signIn(email, password);
  }
}