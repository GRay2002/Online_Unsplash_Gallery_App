import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/comment.dart';
import 'app_action.dart';

part 'get_comments.freezed.dart';

@freezed
class GetComments with _$GetComments implements AppAction {
  const factory GetComments(String imageId) = GetCommentsStart;

  const factory GetComments.successful(List<Comment> comments) = GetCommentsSuccessful;

  @Implements<ErrorAction>()
  const factory GetComments.error(Object error, StackTrace stackTrace) = GetCommentsError;
}
