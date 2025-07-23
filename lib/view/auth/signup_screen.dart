import 'package:abyansf_asfmanagment_app/data/state_holder/registration_controller.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_style.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/auth/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_snack_bar.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _numberTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Request an account',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.bold40,
                ),
                SizedBox(height: 20),
                Text(
                  'Get started with your access in\njust a few steps.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                  ),
                ),
                SizedBox(height: AppStyles.heightM),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Name'),
                  controller: _nameTEController,
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                  controller: _emailTEController,
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: 'Whats app  Number'),
                  controller: _numberTEController,
                  validator: (String? value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                // login button //
                Row(
                  children: [
                    Expanded(
                      child: GetBuilder<RegistrationController>(
                        builder: (controller) {
                          if (controller.getRegistrationInProgress) {
                            return Center(child: CircularProgressIndicator(),);
                          }
                          return ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                controller.getUserRegistration(
                                  _nameTEController.text.trim(),
                                  _emailTEController.text.trim(),
                                  _numberTEController.text.trim(),
                                ).then((result) {
                                  print('The result $result');
                                  if(result == true) {
                                    customSnackBar("Success", 'Registration Successfully');
                                    Get.to(GmailVerificationScreen());
                                  } else {
                                    customSnackBar("Failed", 'Registration Failed! Try again');
                                  }
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              padding: const EdgeInsets.symmetric(
                                vertical: 14,
                              ),
                            ),
                            child: Text(
                              'Send request',
                              style: AppTextStyle.bold16.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          );
                        },
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
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: AppStyles.fontL,
                        fontFamily: 'Inter',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xffAD8945),
                          fontSize: AppStyles.fontL,
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
