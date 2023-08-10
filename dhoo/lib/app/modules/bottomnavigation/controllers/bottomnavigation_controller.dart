import 'package:dhoo/app/modules/balance/views/balance_view.dart';
import 'package:dhoo/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

class BottomnavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = [
    const HomeView(),
    const BalanceView(),
  ];

  setIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
