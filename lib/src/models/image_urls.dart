import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_urls.freezed.dart';
part 'image_urls.g.dart';

@freezed
class ImageUrls with _$ImageUrls {
  const factory ImageUrls({
    required String thumb,
    required String small,
  }) = ImageUrls$;

  factory ImageUrls.fromJson(Map<dynamic, dynamic> json) => _$ImageUrlsFromJson(Map<String, dynamic>.from(json));
}
