import 'package:abyansf_asfmanagment_app/data/model/login_model.dart';
import 'package:abyansf_asfmanagment_app/data/model/network_response.dart';
import 'package:abyansf_asfmanagment_app/data/services/network_caller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/auth_controller.dart';
import 'package:abyansf_asfmanagment_app/utils/urls.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:get/get.dart';

import '../../view/widget/custom_snack_bar.dart';

class LoginController extends GetxController{
  bool _getLoginInProgress=false;
  bool get getLoginInProgress => _getLoginInProgress;


  Future<void> userLogin(String email,String password)async{
    final user=LoginModel(email: email,password: password);
    _getLoginInProgress=true;
    update();
    final NetworkResponse response=await NetworkCaller().loginRequest(Urls.loginUrl,
        user.toJson());
    _getLoginInProgress=false;
    update();
    if(response.statusCode== 200){
      Get.to(()=>CustomBottomBar());
    }else {
      //snackbar
      customSnackBar("failed", 'Try again');
    }
  }


}
