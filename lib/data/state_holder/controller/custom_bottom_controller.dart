
import 'package:abyansf_asfmanagment_app/data/state_holder/get_all_categories_controller.dart';
import 'package:get/get.dart';


class CustomBottomController extends GetxController {
  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }

}
