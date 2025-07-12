import 'package:get/get.dart';

class CounterController extends GetxController {
  var minus = 0.obs;

  void decrease() {
    if (minus != 0) {
      minus--;
    }
  }

  void increase() {
    minus++;
  }
}
