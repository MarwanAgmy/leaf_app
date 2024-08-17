import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/model/user_model.dart';

class InheritedUserModel extends InheritedWidget {
  final UserModel userData;
  final Widget child;

  const InheritedUserModel(
      {super.key, required this.child, required this.userData})
      : super(child: child);

  static InheritedUserModel of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedUserModel>()
        as InheritedUserModel);
  }

  @override
  bool updateShouldNotify(InheritedUserModel oldWidget) {
    return true;
  }
}
