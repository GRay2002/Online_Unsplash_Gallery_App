import 'package:freezed_annotation/freezed_annotation.dart';

import 'author_user.dart';
import 'image_urls.dart';

part 'unsplash_image.freezed.dart';
part 'unsplash_image.g.dart';

@freezed
class UnsplashImage with _$UnsplashImage {
  const factory UnsplashImage({
    @JsonKey(name: 'alt_description') required String description,
    @JsonKey(name: 'id') required String imageId,
    @JsonKey(name: 'urls') required ImageUrls smallImage,
    required int likes,
    @JsonKey(name: 'user') required AuthorUser authorPage,
  }) = UnsplashImage$;

  factory UnsplashImage.fromJson(Map<dynamic, dynamic> json) =>
      _$UnsplashImageFromJson(Map<String, dynamic>.from(json));
}
