import 'package:leaf_social_media_app/model/user_model.dart';

class CommentModel {
  final UserModel user;
  final String comment;
  final DateTime time;

  const CommentModel({
    required this.user,
    required this.comment,
    required this.time,
  });
}
