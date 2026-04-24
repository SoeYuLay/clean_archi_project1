import 'package:clean_archi_project1/core/error/failure.dart';
import 'package:clean_archi_project1/features/auth/domain/repository/auth_repo.dart';
import 'package:either_dart/either.dart';

class ResetPasswordUseCase {
  final AuthRepository authRepository;

  ResetPasswordUseCase(this.authRepository);

  Future<Either<Failure,void>> call(String email) async{
    return await authRepository.resetPassword(email);
  }
}