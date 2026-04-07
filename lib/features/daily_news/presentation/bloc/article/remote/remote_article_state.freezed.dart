// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_article_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles) done,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? done,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? done,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticleLoading value) loading,
    required TResult Function(RemoteArticleDone value) done,
    required TResult Function(RemoteArticleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteArticleLoading value)? loading,
    TResult? Function(RemoteArticleDone value)? done,
    TResult? Function(RemoteArticleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticleLoading value)? loading,
    TResult Function(RemoteArticleDone value)? done,
    TResult Function(RemoteArticleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteArticleStateCopyWith<$Res> {
  factory $RemoteArticleStateCopyWith(
          RemoteArticleState value, $Res Function(RemoteArticleState) then) =
      _$RemoteArticleStateCopyWithImpl<$Res, RemoteArticleState>;
}

/// @nodoc
class _$RemoteArticleStateCopyWithImpl<$Res, $Val extends RemoteArticleState>
    implements $RemoteArticleStateCopyWith<$Res> {
  _$RemoteArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoteArticleLoadingImplCopyWith<$Res> {
  factory _$$RemoteArticleLoadingImplCopyWith(_$RemoteArticleLoadingImpl value,
          $Res Function(_$RemoteArticleLoadingImpl) then) =
      __$$RemoteArticleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoteArticleLoadingImplCopyWithImpl<$Res>
    extends _$RemoteArticleStateCopyWithImpl<$Res, _$RemoteArticleLoadingImpl>
    implements _$$RemoteArticleLoadingImplCopyWith<$Res> {
  __$$RemoteArticleLoadingImplCopyWithImpl(_$RemoteArticleLoadingImpl _value,
      $Res Function(_$RemoteArticleLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoteArticleLoadingImpl implements RemoteArticleLoading {
  const _$RemoteArticleLoadingImpl();

  @override
  String toString() {
    return 'RemoteArticleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteArticleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles) done,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? done,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? done,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticleLoading value) loading,
    required TResult Function(RemoteArticleDone value) done,
    required TResult Function(RemoteArticleError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteArticleLoading value)? loading,
    TResult? Function(RemoteArticleDone value)? done,
    TResult? Function(RemoteArticleError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticleLoading value)? loading,
    TResult Function(RemoteArticleDone value)? done,
    TResult Function(RemoteArticleError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RemoteArticleLoading implements RemoteArticleState {
  const factory RemoteArticleLoading() = _$RemoteArticleLoadingImpl;
}

/// @nodoc
abstract class _$$RemoteArticleDoneImplCopyWith<$Res> {
  factory _$$RemoteArticleDoneImplCopyWith(_$RemoteArticleDoneImpl value,
          $Res Function(_$RemoteArticleDoneImpl) then) =
      __$$RemoteArticleDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$RemoteArticleDoneImplCopyWithImpl<$Res>
    extends _$RemoteArticleStateCopyWithImpl<$Res, _$RemoteArticleDoneImpl>
    implements _$$RemoteArticleDoneImplCopyWith<$Res> {
  __$$RemoteArticleDoneImplCopyWithImpl(_$RemoteArticleDoneImpl _value,
      $Res Function(_$RemoteArticleDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$RemoteArticleDoneImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$RemoteArticleDoneImpl implements RemoteArticleDone {
  const _$RemoteArticleDoneImpl(final List<Article> articles)
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'RemoteArticleState.done(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteArticleDoneImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteArticleDoneImplCopyWith<_$RemoteArticleDoneImpl> get copyWith =>
      __$$RemoteArticleDoneImplCopyWithImpl<_$RemoteArticleDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles) done,
    required TResult Function(String error) error,
  }) {
    return done(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? done,
    TResult? Function(String error)? error,
  }) {
    return done?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? done,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticleLoading value) loading,
    required TResult Function(RemoteArticleDone value) done,
    required TResult Function(RemoteArticleError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteArticleLoading value)? loading,
    TResult? Function(RemoteArticleDone value)? done,
    TResult? Function(RemoteArticleError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticleLoading value)? loading,
    TResult Function(RemoteArticleDone value)? done,
    TResult Function(RemoteArticleError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class RemoteArticleDone implements RemoteArticleState {
  const factory RemoteArticleDone(final List<Article> articles) =
      _$RemoteArticleDoneImpl;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$RemoteArticleDoneImplCopyWith<_$RemoteArticleDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteArticleErrorImplCopyWith<$Res> {
  factory _$$RemoteArticleErrorImplCopyWith(_$RemoteArticleErrorImpl value,
          $Res Function(_$RemoteArticleErrorImpl) then) =
      __$$RemoteArticleErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RemoteArticleErrorImplCopyWithImpl<$Res>
    extends _$RemoteArticleStateCopyWithImpl<$Res, _$RemoteArticleErrorImpl>
    implements _$$RemoteArticleErrorImplCopyWith<$Res> {
  __$$RemoteArticleErrorImplCopyWithImpl(_$RemoteArticleErrorImpl _value,
      $Res Function(_$RemoteArticleErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RemoteArticleErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoteArticleErrorImpl implements RemoteArticleError {
  const _$RemoteArticleErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RemoteArticleState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteArticleErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteArticleErrorImplCopyWith<_$RemoteArticleErrorImpl> get copyWith =>
      __$$RemoteArticleErrorImplCopyWithImpl<_$RemoteArticleErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles) done,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? done,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? done,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteArticleLoading value) loading,
    required TResult Function(RemoteArticleDone value) done,
    required TResult Function(RemoteArticleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteArticleLoading value)? loading,
    TResult? Function(RemoteArticleDone value)? done,
    TResult? Function(RemoteArticleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteArticleLoading value)? loading,
    TResult Function(RemoteArticleDone value)? done,
    TResult Function(RemoteArticleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoteArticleError implements RemoteArticleState {
  const factory RemoteArticleError(final String error) =
      _$RemoteArticleErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$RemoteArticleErrorImplCopyWith<_$RemoteArticleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
