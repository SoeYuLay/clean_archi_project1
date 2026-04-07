// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_article_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteArticleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticles value) getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticles value)? getArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticles value)? getArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteArticleEventCopyWith<$Res> {
  factory $RemoteArticleEventCopyWith(
          RemoteArticleEvent value, $Res Function(RemoteArticleEvent) then) =
      _$RemoteArticleEventCopyWithImpl<$Res, RemoteArticleEvent>;
}

/// @nodoc
class _$RemoteArticleEventCopyWithImpl<$Res, $Val extends RemoteArticleEvent>
    implements $RemoteArticleEventCopyWith<$Res> {
  _$RemoteArticleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArticlesImplCopyWith<$Res> {
  factory _$$GetArticlesImplCopyWith(
          _$GetArticlesImpl value, $Res Function(_$GetArticlesImpl) then) =
      __$$GetArticlesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArticlesImplCopyWithImpl<$Res>
    extends _$RemoteArticleEventCopyWithImpl<$Res, _$GetArticlesImpl>
    implements _$$GetArticlesImplCopyWith<$Res> {
  __$$GetArticlesImplCopyWithImpl(
      _$GetArticlesImpl _value, $Res Function(_$GetArticlesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArticlesImpl implements GetArticles {
  const _$GetArticlesImpl();

  @override
  String toString() {
    return 'RemoteArticleEvent.getArticles()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetArticlesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArticles,
  }) {
    return getArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArticles,
  }) {
    return getArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArticles,
    required TResult orElse(),
  }) {
    if (getArticles != null) {
      return getArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArticles value) getArticles,
  }) {
    return getArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArticles value)? getArticles,
  }) {
    return getArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArticles value)? getArticles,
    required TResult orElse(),
  }) {
    if (getArticles != null) {
      return getArticles(this);
    }
    return orElse();
  }
}

abstract class GetArticles implements RemoteArticleEvent {
  const factory GetArticles() = _$GetArticlesImpl;
}
