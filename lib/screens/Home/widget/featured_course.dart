import 'package:course_app/constants/colors.dart';
import 'package:course_app/models/course.dart';
import 'package:course_app/screens/Home/widget/category_title.dart';
import 'package:course_app/screens/Home/widget/course_item.dart';
import 'package:flutter/material.dart';

class FeaturedCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  FeaturedCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle("Top of the week", "view all"),
        Container(
          margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
          height: 250,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            scrollDirection: Axis.horizontal,
            itemCount: coursesList.length,
            itemBuilder: (BuildContext context, int index) {
              return CourseItem(coursesList[index]);
            },
          ),
        ),
      ],
    );
  }
}
