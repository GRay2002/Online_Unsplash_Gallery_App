// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateComment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Comment comment) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Comment comment)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Comment comment)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateCommentStart value) $default, {
    required TResult Function(CreateCommentSuccessful value) successful,
    required TResult Function(CreateCommentError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateCommentStart value)? $default, {
    TResult? Function(CreateCommentSuccessful value)? successful,
    TResult? Function(CreateCommentError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCommentStart value)? $default, {
    TResult Function(CreateCommentSuccessful value)? successful,
    TResult Function(CreateCommentError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentCopyWith<$Res> {
  factory $CreateCommentCopyWith(CreateComment value, $Res Function(CreateComment) then) =
      _$CreateCommentCopyWithImpl<$Res, CreateComment>;
}

/// @nodoc
class _$CreateCommentCopyWithImpl<$Res, $Val extends CreateComment> implements $CreateCommentCopyWith<$Res> {
  _$CreateCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateCommentStartImplCopyWith<$Res> {
  factory _$$CreateCommentStartImplCopyWith(
          _$CreateCommentStartImpl value, $Res Function(_$CreateCommentStartImpl) then) =
      __$$CreateCommentStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$CreateCommentStartImplCopyWithImpl<$Res> extends _$CreateCommentCopyWithImpl<$Res, _$CreateCommentStartImpl>
    implements _$$CreateCommentStartImplCopyWith<$Res> {
  __$$CreateCommentStartImplCopyWithImpl(_$CreateCommentStartImpl _value, $Res Function(_$CreateCommentStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$CreateCommentStartImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateCommentStartImpl implements CreateCommentStart {
  const _$CreateCommentStartImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'CreateComment(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentStartImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentStartImplCopyWith<_$CreateCommentStartImpl> get copyWith =>
      __$$CreateCommentStartImplCopyWithImpl<_$CreateCommentStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Comment comment) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Comment comment)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Comment comment)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateCommentStart value) $default, {
    required TResult Function(CreateCommentSuccessful value) successful,
    required TResult Function(CreateCommentError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateCommentStart value)? $default, {
    TResult? Function(CreateCommentSuccessful value)? successful,
    TResult? Function(CreateCommentError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCommentStart value)? $default, {
    TResult Function(CreateCommentSuccessful value)? successful,
    TResult Function(CreateCommentError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateCommentStart implements CreateComment {
  const factory CreateCommentStart(final String text) = _$CreateCommentStartImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$CreateCommentStartImplCopyWith<_$CreateCommentStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCommentSuccessfulImplCopyWith<$Res> {
  factory _$$CreateCommentSuccessfulImplCopyWith(
          _$CreateCommentSuccessfulImpl value, $Res Function(_$CreateCommentSuccessfulImpl) then) =
      __$$CreateCommentSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$CreateCommentSuccessfulImplCopyWithImpl<$Res>
    extends _$CreateCommentCopyWithImpl<$Res, _$CreateCommentSuccessfulImpl>
    implements _$$CreateCommentSuccessfulImplCopyWith<$Res> {
  __$$CreateCommentSuccessfulImplCopyWithImpl(
      _$CreateCommentSuccessfulImpl _value, $Res Function(_$CreateCommentSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$CreateCommentSuccessfulImpl(
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$CreateCommentSuccessfulImpl implements CreateCommentSuccessful {
  const _$CreateCommentSuccessfulImpl(this.comment);

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CreateComment.successful(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentSuccessfulImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentSuccessfulImplCopyWith<_$CreateCommentSuccessfulImpl> get copyWith =>
      __$$CreateCommentSuccessfulImplCopyWithImpl<_$CreateCommentSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Comment comment) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Comment comment)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Comment comment)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateCommentStart value) $default, {
    required TResult Function(CreateCommentSuccessful value) successful,
    required TResult Function(CreateCommentError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateCommentStart value)? $default, {
    TResult? Function(CreateCommentSuccessful value)? successful,
    TResult? Function(CreateCommentError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCommentStart value)? $default, {
    TResult Function(CreateCommentSuccessful value)? successful,
    TResult Function(CreateCommentError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateCommentSuccessful implements CreateComment {
  const factory CreateCommentSuccessful(final Comment comment) = _$CreateCommentSuccessfulImpl;

  Comment get comment;
  @JsonKey(ignore: true)
  _$$CreateCommentSuccessfulImplCopyWith<_$CreateCommentSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCommentErrorImplCopyWith<$Res> {
  factory _$$CreateCommentErrorImplCopyWith(
          _$CreateCommentErrorImpl value, $Res Function(_$CreateCommentErrorImpl) then) =
      __$$CreateCommentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateCommentErrorImplCopyWithImpl<$Res> extends _$CreateCommentCopyWithImpl<$Res, _$CreateCommentErrorImpl>
    implements _$$CreateCommentErrorImplCopyWith<$Res> {
  __$$CreateCommentErrorImplCopyWithImpl(_$CreateCommentErrorImpl _value, $Res Function(_$CreateCommentErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateCommentErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateCommentErrorImpl implements CreateCommentError {
  const _$CreateCommentErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateComment.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentErrorImplCopyWith<_$CreateCommentErrorImpl> get copyWith =>
      __$$CreateCommentErrorImplCopyWithImpl<_$CreateCommentErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function(Comment comment) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String text)? $default, {
    TResult? Function(Comment comment)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function(Comment comment)? successful,
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
    TResult Function(CreateCommentStart value) $default, {
    required TResult Function(CreateCommentSuccessful value) successful,
    required TResult Function(CreateCommentError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateCommentStart value)? $default, {
    TResult? Function(CreateCommentSuccessful value)? successful,
    TResult? Function(CreateCommentError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateCommentStart value)? $default, {
    TResult Function(CreateCommentSuccessful value)? successful,
    TResult Function(CreateCommentError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateCommentError implements CreateComment, ErrorAction {
  const factory CreateCommentError(final Object error, final StackTrace stackTrace) = _$CreateCommentErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateCommentErrorImplCopyWith<_$CreateCommentErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
