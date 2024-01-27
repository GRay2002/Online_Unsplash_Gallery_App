import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_links.freezed.dart';
part 'author_links.g.dart';

@freezed
class AuthorLinks with _$AuthorLinks {
  const factory AuthorLinks({
    required String html,
  }) = AuthorLinks$;

  factory AuthorLinks.fromJson(Map<dynamic, dynamic> json) => _$AuthorLinksFromJson(Map<String, dynamic>.from(json));
}
