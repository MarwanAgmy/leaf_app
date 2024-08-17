import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/model/post_model.dart';
import 'package:leaf_social_media_app/widgets/inherited_widgets/inherited_post_model.dart';

class PostStats extends StatelessWidget {
  const PostStats({super.key});

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _ShowStat(
          icon: Icons.favorite,
          number: postData.reacts,
          color: Colors.red,
        ),
        _ShowStat(
          icon: Icons.remove_red_eye,
          number: postData.views,
          color: Color.fromARGB(255, 27, 94, 32),
        ),
      ],
    );
  }
}

class _ShowStat extends StatelessWidget {
  final IconData icon;
  final int number;
  final Color color;

  const _ShowStat({
    required this.icon,
    required this.number,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 2.0),
          child: Icon(icon, color: color),
        ),
        Text(number.toString()),
      ],
    );
  }
}
