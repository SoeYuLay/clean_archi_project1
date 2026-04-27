// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentUser,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentUser,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentUser,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? signUpWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentUserEvent value) loadCurrentUser,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(ResetPwdEvent value) resetPassword,
    required TResult Function(SignUpWithGoogle value) signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(ResetPwdEvent value)? resetPassword,
    TResult? Function(SignUpWithGoogle value)? signUpWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(ResetPwdEvent value)? resetPassword,
    TResult Function(SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocEventCopyWith<$Res> {
  factory $AuthBlocEventCopyWith(
          AuthBlocEvent value, $Res Function(AuthBlocEvent) then) =
      _$AuthBlocEventCopyWithImpl<$Res, AuthBlocEvent>;
}

/// @nodoc
class _$AuthBlocEventCopyWithImpl<$Res, $Val extends AuthBlocEvent>
    implements $AuthBlocEventCopyWith<$Res> {
  _$AuthBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCurrentUserEventImplCopyWith<$Res> {
  factory _$$LoadCurrentUserEventImplCopyWith(_$LoadCurrentUserEventImpl value,
          $Res Function(_$LoadCurrentUserEventImpl) then) =
      __$$LoadCurrentUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCurrentUserEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$LoadCurrentUserEventImpl>
    implements _$$LoadCurrentUserEventImplCopyWith<$Res> {
  __$$LoadCurrentUserEventImplCopyWithImpl(_$LoadCurrentUserEventImpl _value,
      $Res Function(_$LoadCurrentUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCurrentUserEventImpl implements LoadCurrentUserEvent {
  const _$LoadCurrentUserEventImpl();

  @override
  String toString() {
    return 'AuthBlocEvent.loadCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentUser,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() signUpWithGoogle,
  }) {
    return loadCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentUser,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signUpWithGoogle,
  }) {
    return loadCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentUser,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (loadCurrentUser != null) {
      return loadCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentUserEvent value) loadCurrentUser,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(ResetPwdEvent value) resetPassword,
    required TResult Function(SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return loadCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(ResetPwdEvent value)? resetPassword,
    TResult? Function(SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return loadCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(ResetPwdEvent value)? resetPassword,
    TResult Function(SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (loadCurrentUser != null) {
      return loadCurrentUser(this);
    }
    return orElse();
  }
}

abstract class LoadCurrentUserEvent implements AuthBlocEvent {
  const factory LoadCurrentUserEvent() = _$LoadCurrentUserEventImpl;
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEventImpl implements SignInEvent {
  const _$SignInEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentUser,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() signUpWithGoogle,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentUser,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signUpWithGoogle,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentUser,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentUserEvent value) loadCurrentUser,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(ResetPwdEvent value) resetPassword,
    required TResult Function(SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(ResetPwdEvent value)? resetPassword,
    TResult? Function(SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(ResetPwdEvent value)? resetPassword,
    TResult Function(SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInEvent implements AuthBlocEvent {
  const factory SignInEvent(
      {required final String email,
      required final String password}) = _$SignInEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventImplCopyWith<$Res> {
  factory _$$SignUpEventImplCopyWith(
          _$SignUpEventImpl value, $Res Function(_$SignUpEventImpl) then) =
      __$$SignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$SignUpEventImpl>
    implements _$$SignUpEventImplCopyWith<$Res> {
  __$$SignUpEventImplCopyWithImpl(
      _$SignUpEventImpl _value, $Res Function(_$SignUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEventImpl implements SignUpEvent {
  const _$SignUpEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.signUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      __$$SignUpEventImplCopyWithImpl<_$SignUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentUser,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() signUpWithGoogle,
  }) {
    return signUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentUser,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signUpWithGoogle,
  }) {
    return signUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentUser,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentUserEvent value) loadCurrentUser,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(ResetPwdEvent value) resetPassword,
    required TResult Function(SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(ResetPwdEvent value)? resetPassword,
    TResult? Function(SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(ResetPwdEvent value)? resetPassword,
    TResult Function(SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpEvent implements AuthBlocEvent {
  const factory SignUpEvent(
      {required final String email,
      required final String password}) = _$SignUpEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutEventImpl implements SignOutEvent {
  const _$SignOutEventImpl();

  @override
  String toString() {
    return 'AuthBlocEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentUser,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() signUpWithGoogle,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentUser,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signUpWithGoogle,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentUser,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentUserEvent value) loadCurrentUser,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(ResetPwdEvent value) resetPassword,
    required TResult Function(SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(ResetPwdEvent value)? resetPassword,
    TResult? Function(SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(ResetPwdEvent value)? resetPassword,
    TResult Function(SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutEvent implements AuthBlocEvent {
  const factory SignOutEvent() = _$SignOutEventImpl;
}

/// @nodoc
abstract class _$$ResetPwdEventImplCopyWith<$Res> {
  factory _$$ResetPwdEventImplCopyWith(
          _$ResetPwdEventImpl value, $Res Function(_$ResetPwdEventImpl) then) =
      __$$ResetPwdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPwdEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$ResetPwdEventImpl>
    implements _$$ResetPwdEventImplCopyWith<$Res> {
  __$$ResetPwdEventImplCopyWithImpl(
      _$ResetPwdEventImpl _value, $Res Function(_$ResetPwdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPwdEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPwdEventImpl implements ResetPwdEvent {
  const _$ResetPwdEventImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthBlocEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPwdEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPwdEventImplCopyWith<_$ResetPwdEventImpl> get copyWith =>
      __$$ResetPwdEventImplCopyWithImpl<_$ResetPwdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentUser,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() signUpWithGoogle,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentUser,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signUpWithGoogle,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentUser,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentUserEvent value) loadCurrentUser,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(ResetPwdEvent value) resetPassword,
    required TResult Function(SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(ResetPwdEvent value)? resetPassword,
    TResult? Function(SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(ResetPwdEvent value)? resetPassword,
    TResult Function(SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPwdEvent implements AuthBlocEvent {
  const factory ResetPwdEvent({required final String email}) =
      _$ResetPwdEventImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ResetPwdEventImplCopyWith<_$ResetPwdEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpWithGoogleImplCopyWith<$Res> {
  factory _$$SignUpWithGoogleImplCopyWith(_$SignUpWithGoogleImpl value,
          $Res Function(_$SignUpWithGoogleImpl) then) =
      __$$SignUpWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$SignUpWithGoogleImpl>
    implements _$$SignUpWithGoogleImplCopyWith<$Res> {
  __$$SignUpWithGoogleImplCopyWithImpl(_$SignUpWithGoogleImpl _value,
      $Res Function(_$SignUpWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpWithGoogleImpl implements SignUpWithGoogle {
  const _$SignUpWithGoogleImpl();

  @override
  String toString() {
    return 'AuthBlocEvent.signUpWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentUser,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) signUp,
    required TResult Function() signOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() signUpWithGoogle,
  }) {
    return signUpWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentUser,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? signUp,
    TResult? Function()? signOut,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signUpWithGoogle,
  }) {
    return signUpWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentUser,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? signUp,
    TResult Function()? signOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUpWithGoogle != null) {
      return signUpWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentUserEvent value) loadCurrentUser,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(ResetPwdEvent value) resetPassword,
    required TResult Function(SignUpWithGoogle value) signUpWithGoogle,
  }) {
    return signUpWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(ResetPwdEvent value)? resetPassword,
    TResult? Function(SignUpWithGoogle value)? signUpWithGoogle,
  }) {
    return signUpWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentUserEvent value)? loadCurrentUser,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(ResetPwdEvent value)? resetPassword,
    TResult Function(SignUpWithGoogle value)? signUpWithGoogle,
    required TResult orElse(),
  }) {
    if (signUpWithGoogle != null) {
      return signUpWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignUpWithGoogle implements AuthBlocEvent {
  const factory SignUpWithGoogle() = _$SignUpWithGoogleImpl;
}
