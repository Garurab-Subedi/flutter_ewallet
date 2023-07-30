import 'package:dhoo/app/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ButtonWidgets extends StatelessWidget {
  final String? label;

  const ButtonWidgets({
    super.key,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: Get.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration:
          BoxDecoration(color: purple, borderRadius: BorderRadius.circular(8)),
      child: Text(
        '$label',
        style: semibold.copyWith(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
