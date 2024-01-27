import 'package:freezed_annotation/freezed_annotation.dart';
import 'app_user.dart';
import 'comment.dart';
import 'unsplash_image.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    UnsplashImage? selectedImage,
    @Default(<String, AppUser>{}) Map<String, AppUser> users,
    @Default(<Comment>[]) List<Comment> comments,
    @Default(<UnsplashImage>[]) List<UnsplashImage> unsplashImages,
    @Default(false) bool isLoading,
    @Default(1) int page,
    @Default('') String query,
    @Default('') String color,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
