import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/comment.dart';
import 'app_action.dart';

part 'create_comment.freezed.dart';

@freezed
class CreateComment with _$CreateComment implements AppAction {
  const factory CreateComment(String text) = CreateCommentStart;

  const factory CreateComment.successful(Comment comment) = CreateCommentSuccessful;

  @Implements<ErrorAction>()
  const factory CreateComment.error(Object error, StackTrace stackTrace) = CreateCommentError;
}
