import 'package:abyansf_asfmanagment_app/view_models/controller/carousel_controller.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/counter_controller.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/date_controller.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/recovery_verification_controller.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/verification_controller.dart';
import 'package:get/get.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/image_picker_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickerController>(() => ImagePickerController());
    Get.put(DateController());
    Get.put(CarouselSliderControllers());
    Get.put(CounterController());
    Get.put(RecoveryVerificationController());
    Get.put(VerificationController());
  }
}
