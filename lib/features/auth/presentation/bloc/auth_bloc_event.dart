import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_event.freezed.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent{
  const factory AuthBlocEvent.loadCurrentUser() = LoadCurrentUserEvent;
  
  const factory AuthBlocEvent.signIn({
    required String email,
    required String password,
  }) = SignInEvent;

  const factory AuthBlocEvent.signUp({
    required String email,
    required String password,
  }) = SignUpEvent;

  const factory AuthBlocEvent.signOut() = SignOutEvent;

  const factory AuthBlocEvent.resetPassword({
    required String email,
  }) = ResetPwdEvent;

  const factory AuthBlocEvent.signUpWithGoogle() = SignUpWithGoogle;
}
