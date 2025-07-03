import 'package:get/get.dart';

class VisibleController extends GetxController {
  var isVisible = true.obs;

  void visiblity() {
    isVisible.value = !isVisible.value;
  }
}
