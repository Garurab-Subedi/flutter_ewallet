import 'package:dhoo/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.ONBOARDING);
    }));
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background_splash.png'),
            fit: BoxFit.cover),
      ),
      child: Center(
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/icons/ic_splash.png'))),
      )),
    ));
  }
}
