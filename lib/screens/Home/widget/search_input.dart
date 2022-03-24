import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            border: Border.all(color: kFontLight.withOpacity(0.3), width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            cursorColor: kFontLight,
            decoration: InputDecoration(
              fillColor: kFontLight.withOpacity(0.1),
              filled: true,
              contentPadding: const EdgeInsets.all(18),
              border: InputBorder.none,
              hintText: "Search for history, classes,...",
              hintStyle: const TextStyle(color: kFontLight),
            ),
          ),
        ),
        Positioned(
          right: 45,
          top: 40,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(color: kAcceent, borderRadius: BorderRadius.circular(8)),
            child: Image.asset("assets/icons/search.png"),
            width: 25,
          ),
        ),
      ],
    );
  }
}
