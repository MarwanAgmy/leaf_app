import 'package:flutter_test/flutter_test.dart';
import 'package:leaf_social_media_app/helper/demo_values.dart';
import 'package:leaf_social_media_app/model/post_model.dart';

void main() {
  final PostModel postModel = DemoValues.posts[0];

  test("Testing PostModel DateTime Formatting", () {
    expect(postModel.postTimeFormatted, "Wednesday, November 27, 2024");
  });
}
