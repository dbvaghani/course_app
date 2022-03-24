import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/Home/widget/active_course.dart';
import 'package:course_app/screens/Home/widget/emoji_text.dart';
import 'package:course_app/screens/Home/widget/featured_course.dart';
import 'package:course_app/screens/Home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [const EmojiText(), const SearchInput(), FeaturedCourse(), ActiveCouse()],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Hello DV!",
          style: TextStyle(
            color: kFontLight,
            fontSize: 16,
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('assets/icons/notification.png'),
              width: 30,
            ),
            Positioned(
              top: 15,
              right: 25,
              child: Container(
                height: 6,
                width: 6,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: kAcceent),
              ),
            )
          ],
        )
      ],
    );
  }
}
