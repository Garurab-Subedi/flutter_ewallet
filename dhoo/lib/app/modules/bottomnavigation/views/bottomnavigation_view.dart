import 'package:dhoo/app/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottomnavigation_controller.dart';

class BottomnavigationView extends GetView<BottomnavigationController> {
  const BottomnavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: controller.screens[controller.CurrentIndex.value],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedIconTheme: const IconThemeData(color: purple),
            unselectedIconTheme: IconThemeData(color: purple.withOpacity(0.6)),
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            type: BottomNavigationBarType.fixed,
            onTap: (index) => controller.setIndex(index),
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(controller.CurrentIndex.value == 0
                            ? 'assets/icons/ic_home_active.png'
                            : 'assets/icons/ic_home.png'),
                      ),
                    ),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 1
                          ? 'assets/icons/ic_history_active.png'
                          : 'assets/icons/ic_history.png'),
                    )),
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 2
                          ? 'assets/icons/ic_notification_active.png'
                          : 'assets/icons/ic_notification.png'),
                    )),
                  ),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(controller.CurrentIndex.value == 3
                            ? 'assets/icons/ic_profile_active.png'
                            : 'assets/icons/ic_profile.png'),
                      ),
                    ),
                  ),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
