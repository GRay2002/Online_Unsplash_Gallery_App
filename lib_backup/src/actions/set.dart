import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/unsplash_image.dart';
import 'app_action.dart';

part 'set.freezed.dart';

@freezed
class SetQuery with _$SetQuery implements AppAction {
  const factory SetQuery(String query) = SetQuery$;
}

@freezed
class SetColor with _$SetColor implements AppAction {
  const factory SetColor(String color) = SetColor$;
}

@freezed
class SetSelectedImage with _$SetSelectedImage implements AppAction {
  const factory SetSelectedImage(UnsplashImage image) = SetSelectedImage$;
}
