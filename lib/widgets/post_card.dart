import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/helper/common.dart';
import 'package:leaf_social_media_app/model/post_model.dart';
import 'package:leaf_social_media_app/pages/post_page.dart';
import 'package:leaf_social_media_app/presentation/themes.dart';
import 'package:leaf_social_media_app/widgets/inherited_widgets/inherited_post_model.dart';
import 'package:leaf_social_media_app/widgets/post_stats.dart';
import 'package:leaf_social_media_app/widgets/post_time_stamp.dart';
import 'package:leaf_social_media_app/widgets/user_details.dart';

/*
class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 2,
      child: Card(
        child: Column(children: <Widget>[
          Post(),
        ]),
      ),
    );
    ;
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PostImage(),
                PostTitleAndSummary(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserImage(),
              UserNameAndEmail(),
            ],
          ),
        ],
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Image.asset(
          DemoValues.postImage,
        ));
  }
}

class PostTitleAndSummary extends StatelessWidget {
  const PostTitleAndSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DemoValues.postTitle,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Text(DemoValues.postSummary,
              style: TextStyle(
                fontSize: 30,
              )),
        ],
      ),
    );
  }
}

class UserNameAndEmail extends StatelessWidget {
  const UserNameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DemoValues.userName),
          Text(DemoValues.userEmail),
        ],
      ),
    );
  }
}

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(DemoValues.userImage),
    );
  }
}
*/
/*
class PostCard extends StatelessWidget {
  //const PostCard({Key key}) : super(key: key);
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 2,
      child: Card(
        child: Column(children: <Widget>[_Post(), _PostDetails()]),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  //const _Post({super.key});
  const _Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: <Widget>[_PostImage(), _PostTitleAndSummary()],
      ),
    );
  }
}

class _PostTitleAndSummary extends StatelessWidget {
  const _PostTitleAndSummary({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextStyle titleTheme = Theme.of(context).textTheme.titleLarge;
    final TextStyle? titleTheme = Theme.of(context).textTheme.headlineLarge;
    final TextStyle? summaryTheme = Theme.of(context).textTheme.titleLarge;
    final String title = DemoValues.postTitle;
    final String summary = DemoValues.postSummary;

    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(title, style: titleTheme),
          Text(summary, style: summaryTheme),
        ],
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 3, child: Image.asset(DemoValues.postImage));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[_UserImage(), _UserNameAndEmail()],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(DemoValues.userName),
        Text(DemoValues.userEmail),
      ],
    );
  }
}

class _UserImage extends StatelessWidget {
  const _UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(DemoValues.userImage),
    );
  }
}
*/
bool _isLandscape(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.landscape;

class PostCard extends StatelessWidget {
  final PostModel postData;
  const PostCard({super.key, required this.postData});

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = _isLandscape(context) ? 6 / 2 : 6 / 3;
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PostPage(
            postData: postData,
          );
        }));
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Card(
          elevation: 2,
          child: Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(4.0),
            child: InheritedPostModel(
              postData: postData,
              child: Column(
                children: <Widget>[
                  Post(),
                  Divider(color: Colors.grey),
                  PostDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(children: <Widget>[PostImage(), PostTitleAndSummary()]),
    );
  }
}

class PostTitleAndSummary extends StatelessWidget {
  const PostTitleAndSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    final TextStyle titleTheme = TextThemes.title;
    final TextStyle summaryTheme = TextThemes.body1;
    final String title = postData.title;
    final String summary = postData.summary;
    final int flex = isLandscape(context) ? 5 : 3;

    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: titleTheme),
                const SizedBox(height: 2.0),
                Text(summary, style: summaryTheme),
              ],
            ),
            const PostTimeStamp(
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  const PostImage({super.key});

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    return Expanded(flex: 2, child: Image.asset(postData.imageURL));
  }
}

class PostDetails extends StatelessWidget {
  const PostDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    return Row(
      children: <Widget>[
        Expanded(flex: 3, child: UserDetails(userData: postData.author)),
        Expanded(flex: 1, child: PostStats()),
      ],
    );
  }
}

/*class UserNameAndEmail extends StatelessWidget {
  const UserNameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextStyle? nameTheme = Theme.of(context).textTheme.headlineSmall;
    // final TextStyle? emailTheme = Theme.of(context).textTheme.titleLarge;
    final TextStyle nameTheme = TextThemes.subtitle;
    final TextStyle emailTheme = TextThemes.body1;

    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(DemoValues.userName, style: nameTheme),
            SizedBox(height: 2.0),
            Text(DemoValues.userEmail, style: emailTheme),
          ],
        ),
      ),
    );
  }
}

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(DemoValues.userImage),
    );
  }
}

class PostTimeStamp extends StatelessWidget {
  const PostTimeStamp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle timeTheme = TextThemes.dateStyle;
    return Expanded(
      flex: 2,
      child: Text(
        DemoValues.postTime,
        style: timeTheme,
      ),
    );
  }
}
*/