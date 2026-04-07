// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_article_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalArticleLoading value) loading,
    required TResult Function(LocalArticleDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalArticleLoading value)? loading,
    TResult? Function(LocalArticleDone value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalArticleLoading value)? loading,
    TResult Function(LocalArticleDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalArticleStateCopyWith<$Res> {
  factory $LocalArticleStateCopyWith(
          LocalArticleState value, $Res Function(LocalArticleState) then) =
      _$LocalArticleStateCopyWithImpl<$Res, LocalArticleState>;
}

/// @nodoc
class _$LocalArticleStateCopyWithImpl<$Res, $Val extends LocalArticleState>
    implements $LocalArticleStateCopyWith<$Res> {
  _$LocalArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalArticleLoadingImplCopyWith<$Res> {
  factory _$$LocalArticleLoadingImplCopyWith(_$LocalArticleLoadingImpl value,
          $Res Function(_$LocalArticleLoadingImpl) then) =
      __$$LocalArticleLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalArticleLoadingImplCopyWithImpl<$Res>
    extends _$LocalArticleStateCopyWithImpl<$Res, _$LocalArticleLoadingImpl>
    implements _$$LocalArticleLoadingImplCopyWith<$Res> {
  __$$LocalArticleLoadingImplCopyWithImpl(_$LocalArticleLoadingImpl _value,
      $Res Function(_$LocalArticleLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalArticleLoadingImpl implements LocalArticleLoading {
  const _$LocalArticleLoadingImpl();

  @override
  String toString() {
    return 'LocalArticleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalArticleLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles) done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? done,
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
    required TResult Function(LocalArticleLoading value) loading,
    required TResult Function(LocalArticleDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalArticleLoading value)? loading,
    TResult? Function(LocalArticleDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalArticleLoading value)? loading,
    TResult Function(LocalArticleDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocalArticleLoading implements LocalArticleState {
  const factory LocalArticleLoading() = _$LocalArticleLoadingImpl;
}

/// @nodoc
abstract class _$$LocalArticleDoneImplCopyWith<$Res> {
  factory _$$LocalArticleDoneImplCopyWith(_$LocalArticleDoneImpl value,
          $Res Function(_$LocalArticleDoneImpl) then) =
      __$$LocalArticleDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$LocalArticleDoneImplCopyWithImpl<$Res>
    extends _$LocalArticleStateCopyWithImpl<$Res, _$LocalArticleDoneImpl>
    implements _$$LocalArticleDoneImplCopyWith<$Res> {
  __$$LocalArticleDoneImplCopyWithImpl(_$LocalArticleDoneImpl _value,
      $Res Function(_$LocalArticleDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$LocalArticleDoneImpl(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$LocalArticleDoneImpl implements LocalArticleDone {
  const _$LocalArticleDoneImpl(final List<Article> articles)
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
    return 'LocalArticleState.done(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalArticleDoneImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalArticleDoneImplCopyWith<_$LocalArticleDoneImpl> get copyWith =>
      __$$LocalArticleDoneImplCopyWithImpl<_$LocalArticleDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Article> articles) done,
  }) {
    return done(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Article> articles)? done,
  }) {
    return done?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? done,
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
    required TResult Function(LocalArticleLoading value) loading,
    required TResult Function(LocalArticleDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalArticleLoading value)? loading,
    TResult? Function(LocalArticleDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalArticleLoading value)? loading,
    TResult Function(LocalArticleDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class LocalArticleDone implements LocalArticleState {
  const factory LocalArticleDone(final List<Article> articles) =
      _$LocalArticleDoneImpl;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$LocalArticleDoneImplCopyWith<_$LocalArticleDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
