import 'package:abyansf_asfmanagment_app/data/state_holder/controller/visible_controller.dart';
import 'package:abyansf_asfmanagment_app/data/state_holder/login_controller.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_style.dart';
import 'package:abyansf_asfmanagment_app/view/auth/recover_screen.dart';
import 'package:abyansf_asfmanagment_app/view/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final VisibleController visible = Get.put(VisibleController());

  final TextEditingController _emailTEController = TextEditingController(text: "remonhowlader869@gmail.com");

  final TextEditingController _passwordTEController = TextEditingController(text: "oEprH13U");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
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
                    style: AppTextStyle.interRegular18,
                  ),
                  SizedBox(height: AppStyles.heightM),
                  TextFormField(
                    maxLines: 1,
                    controller: _emailTEController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(height: 20),
                  Obx(
                    () => TextFormField(
                      controller: _passwordTEController,
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return 'Enter your password';
                        }
                        return null;
                      },
                      maxLines: 1,
                      obscureText: visible.isVisible.value,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: visible.isVisible.value
                            ? Icon(Icons.visibility_off_outlined)
                            : Icon(Icons.visibility),
                      ),
                      onTap: visible.visiblity,
                    ),
                  ),
                  SizedBox(height: 20),

                  // text button //
                  TextButton(
                    onPressed: () {
                      Get.to(() => RecoverScreen());
                    },
                    child: Text(
                      "Forgot your password?",
                      style: AppTextStyle.interBold14.copyWith(
                        color: AppColors.primaryDeepColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // login button //
                  Row(
                    children: [
                      Expanded(
                        child: GetBuilder<LoginController>(
                          builder: (loginController) {
                            if(loginController.getLoginInProgress){
                              return Center(child: CircularProgressIndicator(),);
                            }
                            return ElevatedButton(
                              onPressed: () {
                                if(_formKey.currentState!.validate()){
                                  getLogin(loginController);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                              ),
                              child: Text(
                                'Login',
                                style: AppTextStyle.bold16.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            );
                          }
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
                        style: AppTextStyle.interRegular12,
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Request an account",
                          style: AppTextStyle.interRegular12.copyWith(
                            color: AppColors.primaryDeepColor,
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
      ),
    );
  }

  Future<void> getLogin(LoginController loginController )async{
    loginController.userLogin(
        _emailTEController.text.trim(),
        _passwordTEController.text.trim());
  }
}
