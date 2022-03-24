import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/Home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveCouse extends StatelessWidget {
  const ActiveCouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle("Currently Active", "view all"),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/progress.png',
                      width: 60,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Symetry theory",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: kFont),
                      ),
                      Text(
                        "2 lessions left",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: kFontLight),
                      ),
                    ],
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 30.0,
                lineWidth: 5.0,
                percent: 0.61,
                progressColor: kAcceent,
                center: const Text(
                  "61%",
                  style: TextStyle(fontWeight: FontWeight.bold, color: kFont),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
