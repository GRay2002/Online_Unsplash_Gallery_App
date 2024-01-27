// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AppUser? get user => throw _privateConstructorUsedError;
  UnsplashImage? get selectedImage => throw _privateConstructorUsedError;
  Map<String, AppUser> get users => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  List<UnsplashImage> get unsplashImages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppUser? user,
      UnsplashImage? selectedImage,
      Map<String, AppUser> users,
      List<Comment> comments,
      List<UnsplashImage> unsplashImages,
      bool isLoading,
      int page,
      String query,
      String color});

  $AppUserCopyWith<$Res>? get user;
  $UnsplashImageCopyWith<$Res>? get selectedImage;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? selectedImage = freezed,
    Object? users = null,
    Object? comments = null,
    Object? unsplashImages = null,
    Object? isLoading = null,
    Object? page = null,
    Object? query = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as UnsplashImage?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      unsplashImages: null == unsplashImages
          ? _value.unsplashImages
          : unsplashImages // ignore: cast_nullable_to_non_nullable
              as List<UnsplashImage>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnsplashImageCopyWith<$Res>? get selectedImage {
    if (_value.selectedImage == null) {
      return null;
    }

    return $UnsplashImageCopyWith<$Res>(_value.selectedImage!, (value) {
      return _then(_value.copyWith(selectedImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$ImplCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$ImplCopyWith(_$AppState$Impl value, $Res Function(_$AppState$Impl) then) =
      __$$AppState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser? user,
      UnsplashImage? selectedImage,
      Map<String, AppUser> users,
      List<Comment> comments,
      List<UnsplashImage> unsplashImages,
      bool isLoading,
      int page,
      String query,
      String color});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $UnsplashImageCopyWith<$Res>? get selectedImage;
}

/// @nodoc
class __$$AppState$ImplCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res, _$AppState$Impl>
    implements _$$AppState$ImplCopyWith<$Res> {
  __$$AppState$ImplCopyWithImpl(_$AppState$Impl _value, $Res Function(_$AppState$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? selectedImage = freezed,
    Object? users = null,
    Object? comments = null,
    Object? unsplashImages = null,
    Object? isLoading = null,
    Object? page = null,
    Object? query = null,
    Object? color = null,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as UnsplashImage?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      unsplashImages: null == unsplashImages
          ? _value._unsplashImages
          : unsplashImages // ignore: cast_nullable_to_non_nullable
              as List<UnsplashImage>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      this.selectedImage,
      final Map<String, AppUser> users = const <String, AppUser>{},
      final List<Comment> comments = const <Comment>[],
      final List<UnsplashImage> unsplashImages = const <UnsplashImage>[],
      this.isLoading = false,
      this.page = 1,
      this.query = '',
      this.color = ''})
      : _users = users,
        _comments = comments,
        _unsplashImages = unsplashImages;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) => _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  @override
  final UnsplashImage? selectedImage;
  final Map<String, AppUser> _users;
  @override
  @JsonKey()
  Map<String, AppUser> get users {
    if (_users is EqualUnmodifiableMapView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_users);
  }

  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<UnsplashImage> _unsplashImages;
  @override
  @JsonKey()
  List<UnsplashImage> get unsplashImages {
    if (_unsplashImages is EqualUnmodifiableListView) return _unsplashImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unsplashImages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final String color;

  @override
  String toString() {
    return 'AppState(user: $user, selectedImage: $selectedImage, users: $users, comments: $comments, unsplashImages: $unsplashImages, isLoading: $isLoading, page: $page, query: $query, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.selectedImage, selectedImage) || other.selectedImage == selectedImage) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._unsplashImages, _unsplashImages) &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      selectedImage,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_unsplashImages),
      isLoading,
      page,
      query,
      color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      __$$AppState$ImplCopyWithImpl<_$AppState$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ImplToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AppUser? user,
      final UnsplashImage? selectedImage,
      final Map<String, AppUser> users,
      final List<Comment> comments,
      final List<UnsplashImage> unsplashImages,
      final bool isLoading,
      final int page,
      final String query,
      final String color}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  UnsplashImage? get selectedImage;
  @override
  Map<String, AppUser> get users;
  @override
  List<Comment> get comments;
  @override
  List<UnsplashImage> get unsplashImages;
  @override
  bool get isLoading;
  @override
  int get page;
  @override
  String get query;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith => throw _privateConstructorUsedError;
}
