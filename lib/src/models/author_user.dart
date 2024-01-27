import 'package:freezed_annotation/freezed_annotation.dart';
import 'author_links.dart';

part 'author_user.freezed.dart';
part 'author_user.g.dart';

@freezed
class AuthorUser with _$AuthorUser {
  const factory AuthorUser({
    required AuthorLinks links,
  }) = AuthorUser$;

  factory AuthorUser.fromJson(Map<dynamic, dynamic> json) => _$AuthorUserFromJson(Map<String, dynamic>.from(json));
}
