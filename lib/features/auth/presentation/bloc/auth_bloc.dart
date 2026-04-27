import 'package:clean_archi_project1/features/auth/domain/usecase/get_current_user.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/google_sign_up.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/reset_password.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/sign_in_user.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/sign_out_user.dart';
import 'package:clean_archi_project1/features/auth/domain/usecase/sign_up_user.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc_event.dart';
import 'package:clean_archi_project1/features/auth/presentation/bloc/auth_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final SignInUserUseCase _signInUserUseCase;
  final SignUpUserUseCase _signUpUserUseCase;
  final SignOutUserUseCase _signOutUserUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;
  final SignUpwithGoogleUseCase _signUpWithGoogleUseCase;
  AuthBloc(
    this._getCurrentUserUseCase,
    this._signInUserUseCase,
    this._signUpUserUseCase,
    this._signOutUserUseCase,
    this._resetPasswordUseCase,
    this._signUpWithGoogleUseCase
  ) : super(const InitialAuthState()) {
    on<LoadCurrentUserEvent>(_onLoadCurrentUser);
    on<SignInEvent>(_onSignIn);
    on<SignUpEvent>(_onSignUp);
    on<SignOutEvent>(_onSignOut);
    on<ResetPwdEvent>(_onResetPassword);
    on<SignUpWithGoogle>(_onSignUpWithGoogle);
  }

  void _onLoadCurrentUser(
      LoadCurrentUserEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(const LoadingAuthState());
      final result = await _getCurrentUserUseCase();

      result.fold(
        (failure) => emit(const AuthBlocState.unauthenticated()),
        (user) => emit(AuthBlocState.authenticated(user: user)),
      );
    } catch (e) {
      emit(FailureAuthState(error: e.toString()));
    }
  }

  void _onSignIn(SignInEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(const LoadingAuthState());
      final result = await _signInUserUseCase(event.email, event.password);

      result.fold(
        (failure) => emit(FailureAuthState(error: failure.errorMessage)),
        (user) => emit(AuthBlocState.authenticated(user: user))
      );
      
    } catch (e) {
      emit(FailureAuthState(error: e.toString()));
    }
  }

  void _onSignUp(SignUpEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(const LoadingAuthState());
      final result = await _signUpUserUseCase(event.email, event.password);
      result.fold(
        (failure) => emit(FailureAuthState(error: failure.errorMessage)),
        (user) => emit(AuthBlocState.authenticated(user: user))
      );
    } catch (e) {
      emit(FailureAuthState(error: e.toString()));
    }
  }

  Future<void> _onSignUpWithGoogle(SignUpWithGoogle event, Emitter<AuthBlocState> emit) async {
    try{
      emit(const LoadingAuthState());
      final result = await _signUpWithGoogleUseCase();
      result.fold(
        (failure) => emit(FailureAuthState(error: failure.errorMessage)), 
        (user) => emit(AuthBlocState.authenticated(user: user))
        );
    }catch (e){
      emit(FailureAuthState(error: e.toString()));
    }
  }

  void _onSignOut(SignOutEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(const LoadingAuthState());
      await _signOutUserUseCase();
      emit(AuthBlocState.unauthenticated());
    } catch (e) {
      emit(FailureAuthState(error: e.toString()));
    }
  }

  void _onResetPassword(
      ResetPwdEvent event, Emitter<AuthBlocState> emit) async {
    try {
      emit(const LoadingAuthState());
      await _resetPasswordUseCase(event.email);
    } catch (e) {
      emit(FailureAuthState(error: e.toString()));
    }
  }

  
}
