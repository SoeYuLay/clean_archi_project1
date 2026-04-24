import 'package:clean_archi_project1/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_state.freezed.dart';

@freezed
class AuthBlocState with _$AuthBlocState{
  const factory AuthBlocState.initial() = InitialAuthState;
  const factory AuthBlocState.loading() = LoadingAuthState;
  const factory AuthBlocState.authenticated({required UserEntity user}) = AuthenticatedAuthState;
  const factory AuthBlocState.unauthenticated() = UnauthenticatedAuthState;
  const factory AuthBlocState.success() = SuccessAuthState;
  const factory AuthBlocState.failure({required String error}) = FailureAuthState;
}