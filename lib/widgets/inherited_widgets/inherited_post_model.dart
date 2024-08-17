import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/model/post_model.dart';

class InheritedPostModel extends InheritedWidget {
  final PostModel postData;
  @override
  final Widget child;

  const InheritedPostModel(
      {super.key, required this.child, required this.postData})
      : super(child: child);

  static InheritedPostModel of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedPostModel>()
        as InheritedPostModel);
  }

  @override
  bool updateShouldNotify(InheritedPostModel oldWidget) {
    return true;
  }
}
