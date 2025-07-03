import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/view/auth/recoverScreen.dart';
import 'package:abyansf_asfmanagment_app/view/auth/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login Here',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.bold40,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome back you’ve\nbeen missed!',
                  textAlign: TextAlign.center,
            
                  style: AppTextStyle.interRegular18
                ),
                SizedBox(height: AppStyles.heightM),
                TextFormField(maxLines: 1,decoration: InputDecoration(
                  hintText: 'Email'
                ),),
                SizedBox(height: 20),
                TextFormField(maxLines: 1,decoration: InputDecoration(
                    hintText: 'Password',suffixIcon: Icon(Icons.visibility_off_outlined)
                ),),
                SizedBox(height: 20),
            
                // text button //
                TextButton(
                  onPressed: () {
                    Get.to(() => RecoverScreen());
                  },
                  child: Text(
                    "Forgot your password?",
                    style: AppTextStyle.interBold14.copyWith(color: AppColors.primaryDeepColor)
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
                        child:  Text(
                          'Login',
                          style: AppTextStyle.bold16.copyWith(color: AppColors.white)
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
                      style: AppTextStyle.interRegular12
                    ),
                    const SizedBox(width: 4,),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text(
                        "Request an account",
                        style: AppTextStyle.interRegular12.copyWith(color: AppColors.primaryDeepColor)
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
