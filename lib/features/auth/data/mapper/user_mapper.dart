import 'package:clean_archi_project1/features/auth/data/datasources/remote/models/userDto.dart';
import 'package:clean_archi_project1/features/auth/domain/entities/user.dart';

extension UserDtoX on UserDto {
  UserEntity toDomain() => UserEntity(
        userID: userID,
        email: email,
      );
}