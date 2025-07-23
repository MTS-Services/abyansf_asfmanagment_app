import 'package:abyansf_asfmanagment_app/data/state_holder/auth_controller.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../utils/urls.dart';
import '../model/network_response.dart';
import '../model/registraton_model.dart';
import '../services/network_caller.dart';

class RegistrationController extends GetxController {
  bool _getRegistrationInProgress = false;
  bool get getRegistrationInProgress => _getRegistrationInProgress;

  Future<bool> getUserRegistration(String name, String email, String number) async {
    final user = RegistrationModel(name: name, email: email, whatsapp: number);
    await AuthController.saveUserEmail(email);
    _getRegistrationInProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller().postRequest(
      Urls.registrationUrl,
      user.toJson(),
    );
    _getRegistrationInProgress = false;
    update();
    return response.isSuccess;
  }
}

