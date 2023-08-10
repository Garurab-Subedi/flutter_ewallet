import 'package:get/get.dart';

class PhonenumberController extends GetxController {
  RxString textPhone = ''.obs;

  updateValue(value) {
    print('you to $value');
    textPhone.value = textPhone.value + value;

    update();
  }

  backSpace() {
    if (textPhone.value.isNotEmpty) {
      textPhone.value =
          textPhone.value.substring(0, textPhone.value.length - 1);
    } else {
      print('no number');
    }
  }
}
