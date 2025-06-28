import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/view/auth/recoverScreen.dart';
import 'package:abyansf_asfmanagment_app/view/auth/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login Here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 40,
                    fontWeight: AppStyles.weightBold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome back you’ve\nbeen missed!',
                  textAlign: TextAlign.center,
            
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Inter",
                  ),
                ),
                SizedBox(height: AppStyles.heightM),
                TextFormField(maxLines: 1,decoration: InputDecoration(
                  hintText: 'Email'
                ),),
                SizedBox(height: 20),
                TextFormField(maxLines: 1,decoration: InputDecoration(
                    hintText: 'Password'  
                ),),
                SizedBox(height: 20),
            
                // text button //
                TextButton(
                  onPressed: () {
                    Get.to(() => RecoverScreen());
                  },
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Color(0xffAD8945),
                      fontSize: AppStyles.fontL,
                      fontFamily: "inter",
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // login button //
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => CustomBottomBar()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Playfair Display',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // text button //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: AppStyles.fontL,
                        fontFamily: "inter",
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text(
                        "Request an account",
                        style: TextStyle(
                          color: Color(0xffAD8945),
                          fontSize: AppStyles.fontL,
                          fontFamily: "inter",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
