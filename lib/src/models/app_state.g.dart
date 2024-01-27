// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) => _$AppState$Impl(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      selectedImage:
          json['selectedImage'] == null ? null : UnsplashImage.fromJson(json['selectedImage'] as Map<String, dynamic>),
      users: (json['users'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, AppUser.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, AppUser>{},
      comments:
          (json['comments'] as List<dynamic>?)?.map((e) => Comment.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Comment>[],
      unsplashImages: (json['unsplashImages'] as List<dynamic>?)
              ?.map((e) => UnsplashImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UnsplashImage>[],
      isLoading: json['isLoading'] as bool? ?? false,
      page: json['page'] as int? ?? 1,
      query: json['query'] as String? ?? '',
      color: json['color'] as String? ?? '',
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) => <String, dynamic>{
      'user': instance.user,
      'selectedImage': instance.selectedImage,
      'users': instance.users,
      'comments': instance.comments,
      'unsplashImages': instance.unsplashImages,
      'isLoading': instance.isLoading,
      'page': instance.page,
      'query': instance.query,
      'color': instance.color,
    };
