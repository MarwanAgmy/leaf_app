import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/helper/demo_values.dart';
import 'package:leaf_social_media_app/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Leaf',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff4CB051),
        ),
        body: ListView.builder(
          itemCount: DemoValues.posts.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(postData: DemoValues.posts[index]);
          },
        ));
  }
}
