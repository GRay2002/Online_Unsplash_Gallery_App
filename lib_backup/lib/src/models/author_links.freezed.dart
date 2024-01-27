// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorLinks _$AuthorLinksFromJson(Map<String, dynamic> json) {
  return AuthorLinks$.fromJson(json);
}

/// @nodoc
mixin _$AuthorLinks {
  String get html => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorLinksCopyWith<AuthorLinks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorLinksCopyWith<$Res> {
  factory $AuthorLinksCopyWith(AuthorLinks value, $Res Function(AuthorLinks) then) =
      _$AuthorLinksCopyWithImpl<$Res, AuthorLinks>;
  @useResult
  $Res call({String html});
}

/// @nodoc
class _$AuthorLinksCopyWithImpl<$Res, $Val extends AuthorLinks> implements $AuthorLinksCopyWith<$Res> {
  _$AuthorLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = null,
  }) {
    return _then(_value.copyWith(
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorLinks$ImplCopyWith<$Res> implements $AuthorLinksCopyWith<$Res> {
  factory _$$AuthorLinks$ImplCopyWith(_$AuthorLinks$Impl value, $Res Function(_$AuthorLinks$Impl) then) =
      __$$AuthorLinks$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String html});
}

/// @nodoc
class __$$AuthorLinks$ImplCopyWithImpl<$Res> extends _$AuthorLinksCopyWithImpl<$Res, _$AuthorLinks$Impl>
    implements _$$AuthorLinks$ImplCopyWith<$Res> {
  __$$AuthorLinks$ImplCopyWithImpl(_$AuthorLinks$Impl _value, $Res Function(_$AuthorLinks$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html = null,
  }) {
    return _then(_$AuthorLinks$Impl(
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorLinks$Impl implements AuthorLinks$ {
  const _$AuthorLinks$Impl({required this.html});

  factory _$AuthorLinks$Impl.fromJson(Map<String, dynamic> json) => _$$AuthorLinks$ImplFromJson(json);

  @override
  final String html;

  @override
  String toString() {
    return 'AuthorLinks(html: $html)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorLinks$Impl &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, html);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorLinks$ImplCopyWith<_$AuthorLinks$Impl> get copyWith =>
      __$$AuthorLinks$ImplCopyWithImpl<_$AuthorLinks$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorLinks$ImplToJson(
      this,
    );
  }
}

abstract class AuthorLinks$ implements AuthorLinks {
  const factory AuthorLinks$({required final String html}) = _$AuthorLinks$Impl;

  factory AuthorLinks$.fromJson(Map<String, dynamic> json) = _$AuthorLinks$Impl.fromJson;

  @override
  String get html;
  @override
  @JsonKey(ignore: true)
  _$$AuthorLinks$ImplCopyWith<_$AuthorLinks$Impl> get copyWith => throw _privateConstructorUsedError;
}
