import 'package:abyansf_asfmanagment_app/data/state_holder/auth_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/carousel_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/counter_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/custom_bottom_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/date_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/image_picker_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/recovery_verification_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/splash_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/controller/verification_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/get_all_categories_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/login_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/otp_verification_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/registration_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ImagePickerController());
    Get.put(DateController());
    Get.put(CarouselSliderControllers());
    Get.put(CounterController());
    Get.put(RecoveryVerificationController());
    Get.put(VerificationController());
    Get.put(SplashController());
    Get.put(CustomBottomController());
    Get.put(RegistrationController());
    Get.put(OtpVerificationController());
    Get.put(LoginController());
    Get.put(AuthController());
    Get.put(GetAllCategoriesController());
  }
}
