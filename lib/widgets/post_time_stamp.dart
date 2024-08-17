import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/model/post_model.dart';
import 'package:leaf_social_media_app/presentation/themes.dart';
import 'package:leaf_social_media_app/widgets/inherited_widgets/inherited_post_model.dart';

class PostTimeStamp extends StatelessWidget {
  final Alignment alignment;

  const PostTimeStamp({
    super.key,
    this.alignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    final TextStyle timeTheme = TextThemes.dateStyle;

    return Container(
      width: double.infinity,
      alignment: alignment,
      child: Text(postData.postTimeFormatted, style: timeTheme),
    );
  }
}
