import 'package:abyansf_asfmanagment_app/data/state_holder/auth_controller.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../utils/urls.dart';
import '../model/network_response.dart';
import '../model/otp_verification_model.dart';
import '../services/network_caller.dart';

class OtpVerificationController extends GetxController {
  bool _otpVerificationInProgress = false;
  bool get otpVerificationInProgress => _otpVerificationInProgress;

  Future<NetworkResponse> getUserOtp(String otp) async {
    _otpVerificationInProgress = true;
    String? email = await AuthController.getUserEmail();

    final otpVerify = OtpVerificationModel(code: otp, email: email);

    update();
    final NetworkResponse response = await NetworkCaller().postRequest(
      Urls.otpUrl,
      otpVerify.toJson(),
    );
    _otpVerificationInProgress = false;
    update();
    return response;
  }
}
