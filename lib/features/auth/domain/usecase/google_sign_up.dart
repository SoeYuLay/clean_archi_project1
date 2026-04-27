import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/features/auth/domain/entities/user.dart';
import 'package:clean_archi_project1/features/auth/domain/repository/auth_repo.dart';
import 'package:either_dart/either.dart';

class SignUpwithGoogleUseCase {
  final AuthRepository authRepository;

  SignUpwithGoogleUseCase(this.authRepository);

  Future<Either<Failure,UserEntity>> call() async {
    return await authRepository.signUpWithGoogle();
  }
}