// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUrls _$ImageUrlsFromJson(Map<String, dynamic> json) {
  return ImageUrls$.fromJson(json);
}

/// @nodoc
mixin _$ImageUrls {
  String get thumb => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlsCopyWith<ImageUrls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlsCopyWith<$Res> {
  factory $ImageUrlsCopyWith(ImageUrls value, $Res Function(ImageUrls) then) = _$ImageUrlsCopyWithImpl<$Res, ImageUrls>;
  @useResult
  $Res call({String thumb, String small});
}

/// @nodoc
class _$ImageUrlsCopyWithImpl<$Res, $Val extends ImageUrls> implements $ImageUrlsCopyWith<$Res> {
  _$ImageUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumb = null,
    Object? small = null,
  }) {
    return _then(_value.copyWith(
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrls$ImplCopyWith<$Res> implements $ImageUrlsCopyWith<$Res> {
  factory _$$ImageUrls$ImplCopyWith(_$ImageUrls$Impl value, $Res Function(_$ImageUrls$Impl) then) =
      __$$ImageUrls$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String thumb, String small});
}

/// @nodoc
class __$$ImageUrls$ImplCopyWithImpl<$Res> extends _$ImageUrlsCopyWithImpl<$Res, _$ImageUrls$Impl>
    implements _$$ImageUrls$ImplCopyWith<$Res> {
  __$$ImageUrls$ImplCopyWithImpl(_$ImageUrls$Impl _value, $Res Function(_$ImageUrls$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumb = null,
    Object? small = null,
  }) {
    return _then(_$ImageUrls$Impl(
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrls$Impl implements ImageUrls$ {
  const _$ImageUrls$Impl({required this.thumb, required this.small});

  factory _$ImageUrls$Impl.fromJson(Map<String, dynamic> json) => _$$ImageUrls$ImplFromJson(json);

  @override
  final String thumb;
  @override
  final String small;

  @override
  String toString() {
    return 'ImageUrls(thumb: $thumb, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrls$Impl &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, thumb, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrls$ImplCopyWith<_$ImageUrls$Impl> get copyWith =>
      __$$ImageUrls$ImplCopyWithImpl<_$ImageUrls$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrls$ImplToJson(
      this,
    );
  }
}

abstract class ImageUrls$ implements ImageUrls {
  const factory ImageUrls$({required final String thumb, required final String small}) = _$ImageUrls$Impl;

  factory ImageUrls$.fromJson(Map<String, dynamic> json) = _$ImageUrls$Impl.fromJson;

  @override
  String get thumb;
  @override
  String get small;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrls$ImplCopyWith<_$ImageUrls$Impl> get copyWith => throw _privateConstructorUsedError;
}
