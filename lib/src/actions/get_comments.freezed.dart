// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_comments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetComments {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String imageId) $default, {
    required TResult Function(List<Comment> comments) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String imageId)? $default, {
    TResult? Function(List<Comment> comments)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String imageId)? $default, {
    TResult Function(List<Comment> comments)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCommentsStart value) $default, {
    required TResult Function(GetCommentsSuccessful value) successful,
    required TResult Function(GetCommentsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCommentsStart value)? $default, {
    TResult? Function(GetCommentsSuccessful value)? successful,
    TResult? Function(GetCommentsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCommentsStart value)? $default, {
    TResult Function(GetCommentsSuccessful value)? successful,
    TResult Function(GetCommentsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentsCopyWith<$Res> {
  factory $GetCommentsCopyWith(GetComments value, $Res Function(GetComments) then) =
      _$GetCommentsCopyWithImpl<$Res, GetComments>;
}

/// @nodoc
class _$GetCommentsCopyWithImpl<$Res, $Val extends GetComments> implements $GetCommentsCopyWith<$Res> {
  _$GetCommentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCommentsStartImplCopyWith<$Res> {
  factory _$$GetCommentsStartImplCopyWith(_$GetCommentsStartImpl value, $Res Function(_$GetCommentsStartImpl) then) =
      __$$GetCommentsStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageId});
}

/// @nodoc
class __$$GetCommentsStartImplCopyWithImpl<$Res> extends _$GetCommentsCopyWithImpl<$Res, _$GetCommentsStartImpl>
    implements _$$GetCommentsStartImplCopyWith<$Res> {
  __$$GetCommentsStartImplCopyWithImpl(_$GetCommentsStartImpl _value, $Res Function(_$GetCommentsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
  }) {
    return _then(_$GetCommentsStartImpl(
      null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCommentsStartImpl implements GetCommentsStart {
  const _$GetCommentsStartImpl(this.imageId);

  @override
  final String imageId;

  @override
  String toString() {
    return 'GetComments(imageId: $imageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsStartImpl &&
            (identical(other.imageId, imageId) || other.imageId == imageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsStartImplCopyWith<_$GetCommentsStartImpl> get copyWith =>
      __$$GetCommentsStartImplCopyWithImpl<_$GetCommentsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String imageId) $default, {
    required TResult Function(List<Comment> comments) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(imageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String imageId)? $default, {
    TResult? Function(List<Comment> comments)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(imageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String imageId)? $default, {
    TResult Function(List<Comment> comments)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(imageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCommentsStart value) $default, {
    required TResult Function(GetCommentsSuccessful value) successful,
    required TResult Function(GetCommentsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCommentsStart value)? $default, {
    TResult? Function(GetCommentsSuccessful value)? successful,
    TResult? Function(GetCommentsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCommentsStart value)? $default, {
    TResult Function(GetCommentsSuccessful value)? successful,
    TResult Function(GetCommentsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCommentsStart implements GetComments {
  const factory GetCommentsStart(final String imageId) = _$GetCommentsStartImpl;

  String get imageId;
  @JsonKey(ignore: true)
  _$$GetCommentsStartImplCopyWith<_$GetCommentsStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommentsSuccessfulImplCopyWith<$Res> {
  factory _$$GetCommentsSuccessfulImplCopyWith(
          _$GetCommentsSuccessfulImpl value, $Res Function(_$GetCommentsSuccessfulImpl) then) =
      __$$GetCommentsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$GetCommentsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetCommentsCopyWithImpl<$Res, _$GetCommentsSuccessfulImpl>
    implements _$$GetCommentsSuccessfulImplCopyWith<$Res> {
  __$$GetCommentsSuccessfulImplCopyWithImpl(
      _$GetCommentsSuccessfulImpl _value, $Res Function(_$GetCommentsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$GetCommentsSuccessfulImpl(
      null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$GetCommentsSuccessfulImpl implements GetCommentsSuccessful {
  const _$GetCommentsSuccessfulImpl(final List<Comment> comments) : _comments = comments;

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'GetComments.successful(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsSuccessfulImplCopyWith<_$GetCommentsSuccessfulImpl> get copyWith =>
      __$$GetCommentsSuccessfulImplCopyWithImpl<_$GetCommentsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String imageId) $default, {
    required TResult Function(List<Comment> comments) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String imageId)? $default, {
    TResult? Function(List<Comment> comments)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String imageId)? $default, {
    TResult Function(List<Comment> comments)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCommentsStart value) $default, {
    required TResult Function(GetCommentsSuccessful value) successful,
    required TResult Function(GetCommentsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCommentsStart value)? $default, {
    TResult? Function(GetCommentsSuccessful value)? successful,
    TResult? Function(GetCommentsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCommentsStart value)? $default, {
    TResult Function(GetCommentsSuccessful value)? successful,
    TResult Function(GetCommentsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCommentsSuccessful implements GetComments {
  const factory GetCommentsSuccessful(final List<Comment> comments) = _$GetCommentsSuccessfulImpl;

  List<Comment> get comments;
  @JsonKey(ignore: true)
  _$$GetCommentsSuccessfulImplCopyWith<_$GetCommentsSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommentsErrorImplCopyWith<$Res> {
  factory _$$GetCommentsErrorImplCopyWith(_$GetCommentsErrorImpl value, $Res Function(_$GetCommentsErrorImpl) then) =
      __$$GetCommentsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetCommentsErrorImplCopyWithImpl<$Res> extends _$GetCommentsCopyWithImpl<$Res, _$GetCommentsErrorImpl>
    implements _$$GetCommentsErrorImplCopyWith<$Res> {
  __$$GetCommentsErrorImplCopyWithImpl(_$GetCommentsErrorImpl _value, $Res Function(_$GetCommentsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetCommentsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetCommentsErrorImpl implements GetCommentsError {
  const _$GetCommentsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetComments.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsErrorImplCopyWith<_$GetCommentsErrorImpl> get copyWith =>
      __$$GetCommentsErrorImplCopyWithImpl<_$GetCommentsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String imageId) $default, {
    required TResult Function(List<Comment> comments) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String imageId)? $default, {
    TResult? Function(List<Comment> comments)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String imageId)? $default, {
    TResult Function(List<Comment> comments)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCommentsStart value) $default, {
    required TResult Function(GetCommentsSuccessful value) successful,
    required TResult Function(GetCommentsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCommentsStart value)? $default, {
    TResult? Function(GetCommentsSuccessful value)? successful,
    TResult? Function(GetCommentsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCommentsStart value)? $default, {
    TResult Function(GetCommentsSuccessful value)? successful,
    TResult Function(GetCommentsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCommentsError implements GetComments, ErrorAction {
  const factory GetCommentsError(final Object error, final StackTrace stackTrace) = _$GetCommentsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetCommentsErrorImplCopyWith<_$GetCommentsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
