// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorUser _$AuthorUserFromJson(Map<String, dynamic> json) {
  return AuthorUser$.fromJson(json);
}

/// @nodoc
mixin _$AuthorUser {
  AuthorLinks get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorUserCopyWith<AuthorUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorUserCopyWith<$Res> {
  factory $AuthorUserCopyWith(AuthorUser value, $Res Function(AuthorUser) then) =
      _$AuthorUserCopyWithImpl<$Res, AuthorUser>;
  @useResult
  $Res call({AuthorLinks links});

  $AuthorLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$AuthorUserCopyWithImpl<$Res, $Val extends AuthorUser> implements $AuthorUserCopyWith<$Res> {
  _$AuthorUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as AuthorLinks,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorLinksCopyWith<$Res> get links {
    return $AuthorLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorUser$ImplCopyWith<$Res> implements $AuthorUserCopyWith<$Res> {
  factory _$$AuthorUser$ImplCopyWith(_$AuthorUser$Impl value, $Res Function(_$AuthorUser$Impl) then) =
      __$$AuthorUser$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthorLinks links});

  @override
  $AuthorLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$AuthorUser$ImplCopyWithImpl<$Res> extends _$AuthorUserCopyWithImpl<$Res, _$AuthorUser$Impl>
    implements _$$AuthorUser$ImplCopyWith<$Res> {
  __$$AuthorUser$ImplCopyWithImpl(_$AuthorUser$Impl _value, $Res Function(_$AuthorUser$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
  }) {
    return _then(_$AuthorUser$Impl(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as AuthorLinks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorUser$Impl implements AuthorUser$ {
  const _$AuthorUser$Impl({required this.links});

  factory _$AuthorUser$Impl.fromJson(Map<String, dynamic> json) => _$$AuthorUser$ImplFromJson(json);

  @override
  final AuthorLinks links;

  @override
  String toString() {
    return 'AuthorUser(links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorUser$Impl &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorUser$ImplCopyWith<_$AuthorUser$Impl> get copyWith =>
      __$$AuthorUser$ImplCopyWithImpl<_$AuthorUser$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorUser$ImplToJson(
      this,
    );
  }
}

abstract class AuthorUser$ implements AuthorUser {
  const factory AuthorUser$({required final AuthorLinks links}) = _$AuthorUser$Impl;

  factory AuthorUser$.fromJson(Map<String, dynamic> json) = _$AuthorUser$Impl.fromJson;

  @override
  AuthorLinks get links;
  @override
  @JsonKey(ignore: true)
  _$$AuthorUser$ImplCopyWith<_$AuthorUser$Impl> get copyWith => throw _privateConstructorUsedError;
}
