import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/features/auth/domain/repository/auth_repo.dart';
import 'package:either_dart/either.dart';

class SignOutUserUseCase {
  final AuthRepository authRepository;

  SignOutUserUseCase(this.authRepository);

  Future<Either<Failure,void>> call() async{
    return await authRepository.signOut();
  }
}