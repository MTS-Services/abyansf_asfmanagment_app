import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  int setSelected(int index) {
    return selectedIndex.value = index;
  }
}
