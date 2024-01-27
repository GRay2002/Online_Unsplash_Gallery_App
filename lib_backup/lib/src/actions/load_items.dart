import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/unsplash_image.dart';
import 'app_action.dart';

part 'load_items.freezed.dart';

@freezed
class LoadItems with _$LoadItems implements AppAction {
  const factory LoadItems({
    @Default(false) bool isSearching,
  }) = LoadItemsStart;

  const factory LoadItems.successful(List<UnsplashImage> unsplashImages) = LoadItemsSuccessful;

  @Implements<ErrorAction>()
  const factory LoadItems.error(Object error, StackTrace stackTrace) = LoadItemsError;
}
