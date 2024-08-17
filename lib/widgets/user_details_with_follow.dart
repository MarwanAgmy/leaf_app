import 'package:flutter/material.dart';
import 'package:leaf_social_media_app/model/user_model.dart';
import 'package:leaf_social_media_app/widgets/user_details.dart';

class UserDetailsWithFollowKeys {
  static final ValueKey userDetails = ValueKey("UserDetails");
  static final ValueKey follow = ValueKey("follow");
}

class UserDetailsWithFollow extends StatelessWidget {
  final UserModel userData;

  const UserDetailsWithFollow({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: UserDetails(
            key: UserDetailsWithFollowKeys.userDetails,
            userData: userData,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            key: UserDetailsWithFollowKeys.follow,
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(Icons.group_add),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
