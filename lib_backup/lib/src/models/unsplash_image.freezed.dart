// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unsplash_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnsplashImage _$UnsplashImageFromJson(Map<String, dynamic> json) {
  return UnsplashImage$.fromJson(json);
}

/// @nodoc
mixin _$UnsplashImage {
  @JsonKey(name: 'alt_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get imageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'urls')
  ImageUrls get smallImage => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  AuthorUser get authorPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsplashImageCopyWith<UnsplashImage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashImageCopyWith<$Res> {
  factory $UnsplashImageCopyWith(UnsplashImage value, $Res Function(UnsplashImage) then) =
      _$UnsplashImageCopyWithImpl<$Res, UnsplashImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'alt_description') String description,
      @JsonKey(name: 'id') String imageId,
      @JsonKey(name: 'urls') ImageUrls smallImage,
      int likes,
      @JsonKey(name: 'user') AuthorUser authorPage});

  $ImageUrlsCopyWith<$Res> get smallImage;
  $AuthorUserCopyWith<$Res> get authorPage;
}

/// @nodoc
class _$UnsplashImageCopyWithImpl<$Res, $Val extends UnsplashImage> implements $UnsplashImageCopyWith<$Res> {
  _$UnsplashImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? imageId = null,
    Object? smallImage = null,
    Object? likes = null,
    Object? authorPage = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      smallImage: null == smallImage
          ? _value.smallImage
          : smallImage // ignore: cast_nullable_to_non_nullable
              as ImageUrls,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      authorPage: null == authorPage
          ? _value.authorPage
          : authorPage // ignore: cast_nullable_to_non_nullable
              as AuthorUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlsCopyWith<$Res> get smallImage {
    return $ImageUrlsCopyWith<$Res>(_value.smallImage, (value) {
      return _then(_value.copyWith(smallImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorUserCopyWith<$Res> get authorPage {
    return $AuthorUserCopyWith<$Res>(_value.authorPage, (value) {
      return _then(_value.copyWith(authorPage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnsplashImage$ImplCopyWith<$Res> implements $UnsplashImageCopyWith<$Res> {
  factory _$$UnsplashImage$ImplCopyWith(_$UnsplashImage$Impl value, $Res Function(_$UnsplashImage$Impl) then) =
      __$$UnsplashImage$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'alt_description') String description,
      @JsonKey(name: 'id') String imageId,
      @JsonKey(name: 'urls') ImageUrls smallImage,
      int likes,
      @JsonKey(name: 'user') AuthorUser authorPage});

  @override
  $ImageUrlsCopyWith<$Res> get smallImage;
  @override
  $AuthorUserCopyWith<$Res> get authorPage;
}

/// @nodoc
class __$$UnsplashImage$ImplCopyWithImpl<$Res> extends _$UnsplashImageCopyWithImpl<$Res, _$UnsplashImage$Impl>
    implements _$$UnsplashImage$ImplCopyWith<$Res> {
  __$$UnsplashImage$ImplCopyWithImpl(_$UnsplashImage$Impl _value, $Res Function(_$UnsplashImage$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? imageId = null,
    Object? smallImage = null,
    Object? likes = null,
    Object? authorPage = null,
  }) {
    return _then(_$UnsplashImage$Impl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      smallImage: null == smallImage
          ? _value.smallImage
          : smallImage // ignore: cast_nullable_to_non_nullable
              as ImageUrls,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      authorPage: null == authorPage
          ? _value.authorPage
          : authorPage // ignore: cast_nullable_to_non_nullable
              as AuthorUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsplashImage$Impl implements UnsplashImage$ {
  const _$UnsplashImage$Impl(
      {@JsonKey(name: 'alt_description') required this.description,
      @JsonKey(name: 'id') required this.imageId,
      @JsonKey(name: 'urls') required this.smallImage,
      required this.likes,
      @JsonKey(name: 'user') required this.authorPage});

  factory _$UnsplashImage$Impl.fromJson(Map<String, dynamic> json) => _$$UnsplashImage$ImplFromJson(json);

  @override
  @JsonKey(name: 'alt_description')
  final String description;
  @override
  @JsonKey(name: 'id')
  final String imageId;
  @override
  @JsonKey(name: 'urls')
  final ImageUrls smallImage;
  @override
  final int likes;
  @override
  @JsonKey(name: 'user')
  final AuthorUser authorPage;

  @override
  String toString() {
    return 'UnsplashImage(description: $description, imageId: $imageId, smallImage: $smallImage, likes: $likes, authorPage: $authorPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashImage$Impl &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.smallImage, smallImage) || other.smallImage == smallImage) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.authorPage, authorPage) || other.authorPage == authorPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, imageId, smallImage, likes, authorPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashImage$ImplCopyWith<_$UnsplashImage$Impl> get copyWith =>
      __$$UnsplashImage$ImplCopyWithImpl<_$UnsplashImage$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashImage$ImplToJson(
      this,
    );
  }
}

abstract class UnsplashImage$ implements UnsplashImage {
  const factory UnsplashImage$(
      {@JsonKey(name: 'alt_description') required final String description,
      @JsonKey(name: 'id') required final String imageId,
      @JsonKey(name: 'urls') required final ImageUrls smallImage,
      required final int likes,
      @JsonKey(name: 'user') required final AuthorUser authorPage}) = _$UnsplashImage$Impl;

  factory UnsplashImage$.fromJson(Map<String, dynamic> json) = _$UnsplashImage$Impl.fromJson;

  @override
  @JsonKey(name: 'alt_description')
  String get description;
  @override
  @JsonKey(name: 'id')
  String get imageId;
  @override
  @JsonKey(name: 'urls')
  ImageUrls get smallImage;
  @override
  int get likes;
  @override
  @JsonKey(name: 'user')
  AuthorUser get authorPage;
  @override
  @JsonKey(ignore: true)
  _$$UnsplashImage$ImplCopyWith<_$UnsplashImage$Impl> get copyWith => throw _privateConstructorUsedError;
}
