import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/model/post_model.dart';
import 'package:leaf_social_media_app/presentation/themes.dart';
import 'package:leaf_social_media_app/widgets/comments_list.dart';
import 'package:leaf_social_media_app/widgets/inherited_widgets/inherited_post_model.dart';
import 'package:leaf_social_media_app/widgets/post_stats.dart';
import 'package:leaf_social_media_app/widgets/post_time_stamp.dart';
import 'package:leaf_social_media_app/widgets/user_details_with_follow.dart';

class PostPageKeys {
  static final ValueKey wholePage = ValueKey("wholePage");
  static final ValueKey bannerImage = ValueKey("bannerImage");
  static final ValueKey summary = ValueKey("summary");
  static final ValueKey mainBody = ValueKey("mainBody");
}

class PostPage extends StatelessWidget {
  final PostModel postData;

  const PostPage({super.key, required this.postData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(postData.title)),
      body: InheritedPostModel(
        postData: postData,
        child: ListView(
          key: PostPageKeys.wholePage,
          children: <Widget>[
            _BannerImage(key: PostPageKeys.bannerImage),
            const _NonImageContents(),
          ],
        ),
      ),
    );
  }
}

class _NonImageContents extends StatelessWidget {
  const _NonImageContents({super.key});

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _Summary(key: PostPageKeys.summary),
          PostTimeStamp(),
          _MainBody(key: PostPageKeys.mainBody),
          UserDetailsWithFollow(
            userData: postData.author,
          ),
          SizedBox(height: 8.0),
          PostStats(),
          CommentsList(),
        ],
      ),
    );
  }
}

class _BannerImage extends StatelessWidget {
  const _BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      InheritedPostModel.of(context).postData.imageURL,
      fit: BoxFit.fitWidth,
    );
  }
}

class _Summary extends StatelessWidget {
  const _Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        InheritedPostModel.of(context).postData.summary,
        style: TextThemes.title,
      ),
    );
  }
}

class _MainBody extends StatelessWidget {
  const _MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        InheritedPostModel.of(context).postData.body,
        style: TextThemes.body1,
      ),
    );
  }
}
