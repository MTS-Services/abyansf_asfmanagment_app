import 'package:get/get.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/image_picker_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickerController>(() => ImagePickerController());
  }
}
