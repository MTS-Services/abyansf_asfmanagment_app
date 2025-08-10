import 'dart:convert';

import 'package:abyansf_asfmanagment_app/api_services/login_api_services/login_api_services.dart';
import 'package:abyansf_asfmanagment_app/shared_preferences_services/auth_pref_services/auth_pref_services.dart';
import 'package:abyansf_asfmanagment_app/view/screens/splash_creen/splash_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final TextEditingController emailTEController=TextEditingController(text: "robiulsunyemon111@gmail.com");
  final TextEditingController passwordTEController=TextEditingController(text: "JEikXUj7");


  Future<void> login({required String email,required String password}) async {
    try{
      final response=await LoginApiServices.loginPostRequest(email: email, password: password);
      if(response.statusCode==200){
        final decodedResponse=jsonDecode(response.body);
        final String token=decodedResponse['token'];
        AuthPrefServices.setToken(token: token);
        AuthPrefServices.getToken();
        Get.to(()=>CustomBottomBar());
      }
    }catch(e){
      print(e.toString());
    }
  }
}