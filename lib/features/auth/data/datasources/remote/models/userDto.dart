import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userDto.freezed.dart';
part 'userDto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String userID,
    required String email,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  factory UserDto.fromFirebaseUser(User user) {
    return UserDto(
      userID: user.uid,
      email: user.email ?? '',
    );
  }
}