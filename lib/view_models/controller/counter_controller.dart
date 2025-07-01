import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CounterController extends GetxController {
  var minus = 0.obs;

  void decrease() {
    if(minus != 0){
      minus--;
    }
  }

  void increase() {
    minus++;
  }
}
