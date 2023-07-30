// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/theme.dart';

// ignore: camel_case_types
class onBoardingWidgets extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  const onBoardingWidgets({
    Key? key,
    this.image,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //start page of onboarding
      height: Get.height,
      child: Column(
        children: [
          Container(
            height: Get.height * 0.55,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/$image"), scale: 1.75),
            ),
          ),
          Container(
            height: Get.height * 0.30,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  // ignore: unnecessary_brace_in_string_interps
                  '${title}',
                  style: semibold.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  // ignore: unnecessary_brace_in_string_interps
                  '${subtitle}',
                  style: regular.copyWith(fontSize: 12, color: darkGrey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
