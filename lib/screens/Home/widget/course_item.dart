import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../models/course.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem(this.course, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            color: kPrimaryLight,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(course.autherImg, width: 20),
                          const SizedBox(width: 5),
                          Text(course.auther, style: const TextStyle(fontWeight: FontWeight.bold, color: kFont)),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            course.title,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: kFont),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(color: kFontLight, shape: BoxShape.circle),
                          ),
                          const Text(
                            "2h 22min",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: kFontLight,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 60,
          right: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kAcceent,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () {},
            child: const Text("Start"),
          ),
        )
      ],
    );
  }
}
