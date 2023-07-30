// ignore_for_file: sized_box_for_whitespace

import 'package:dhoo/app/routes/app_pages.dart';
import 'package:dhoo/app/shared/theme.dart';
import 'package:dhoo/app/widgets/onBoardingWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              PageView(
                controller: controller.indicator,
                onPageChanged: ((value) {
                  controller.page.value = value;
                  // ignore: avoid_print
                  print(controller.page.value);
                }),
                children: const [
                  //starting page onboarding
                  onBoardingWidgets(
                    image: 'on_boarding_1.png',
                    title: 'Track Everything',
                    subtitle:
                        'your financial journey start here.We \nare here to help ypur tracking and handle everytransaction 24/day.',
                  ),
                  onBoardingWidgets(
                    image: 'on_boarding_2.png',
                    title: 'fast Transcation',
                    subtitle:
                        'Get easy to pay all yours bills with just \n a few taps. paying your bill become fast and efficient. Enjoy',
                  ),
                  onBoardingWidgets(
                    image: 'on_boarding_3.png',
                    title: 'Enjoy Everyday',
                    subtitle:
                        'Be wise, and discover your best financial experience with us.Everything is inyour hands!',
                  ),
                ],
              ),
              Container(
                alignment: const Alignment(0.8, -0.95),
                child: GestureDetector(
                    onTap: () {
                      controller.indicator.jumpToPage(3);
                    },
                    child: const Text('Skip')),
              ),
              Obx(() => Container(
                  alignment: const Alignment(0, 0.90),
                  child: controller.page.value != 2
                      ? SmoothPageIndicator(
                          controller: controller.indicator,
                          count: 3,
                          effect: const SlideEffect(
                              activeDotColor: purple,
                              dotColor: darkGrey,
                              dotHeight: 8,
                              dotWidth: 8,
                              spacing: 8.0,
                              radius: 4.0),
                        )
                      : GestureDetector(
                          onTap: () {
                            Get.offAllNamed(Routes.SIGNUP);
                          },
                          child: Container(
                            height: 55,
                            width: Get.width * 0.9,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: purple,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              'Getting started ',
                              style: semibold.copyWith(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                        )))
            ],
          ),
        ));
  }
}
