import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String text,
    required String uid,
    required DateTime createdAt,
  }) = Comment$;

  factory Comment.fromJson(Map<dynamic, dynamic> json) => _$CommentFromJson(Map<String, dynamic>.from(json));
}
