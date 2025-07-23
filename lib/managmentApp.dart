
import 'package:abyansf_asfmanagment_app/data/state_holder/auth_controller.dart';
import 'package:abyansf_asfmanagment_app/view/screens/splash_creen/splash_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:flutter/cupertino.dart';

class ManagementApp extends StatelessWidget {
  const ManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
   if(AuthController.isLoggedIn()){
     return CustomBottomBar();
   }else{
     return SplashScreen();
   }
  }
}