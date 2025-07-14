import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/auth/login_screen.dart';
import 'package:abyansf_asfmanagment_app/view/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});

  final List<String> imagePaths = [
    "assets/images/image 1.png",
    "assets/images/image 2.png",
    "assets/images/image 3.png",
    "assets/images/image 4.png",
    "assets/images/image 5.png",
    "assets/images/image 6.png",
    "assets/images/image 7.png",
    "assets/images/image 8.png",
    "assets/images/image 9.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    physics: const NeverScrollableScrollPhysics(),
                    children: imagePaths.map((path) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(path, fit: BoxFit.cover),
                      );
                    }).toList(),
                  ),

                  // Gradient overlay //
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 400,
                    child: IgnorePointer(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(0, 255, 255, 255),
                              Colors.white,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
            Text(
              'Your World. Curated for Luxury.',
              textAlign: TextAlign.center,
              style: AppTextStyle.bold28.copyWith(),
            ),
            Spacer(),
            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Supercars, yachts, travel, entertainment, lifestyle, and more exclusively tailored to your standards.',
                textAlign: TextAlign.center,
                style: AppTextStyle.interRegular16.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
            ),

            Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
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
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => SignupScreen()),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: BorderSide(color: AppColors.primaryColor),
                        ),
                      ),
                      child: Text(
                        'Register',
                        style: AppTextStyle.bold16.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),

            // Terms and Conditions
            SizedBox(
              width: 343.r,
              child: Text(
                'By Continuing, you agree to invite’s terms of services and acknowledge you’ve read our privacy policy',
                textAlign: TextAlign.center,
                style: AppTextStyle.interRegular10.copyWith(
                  color: AppColors.textColor,
                ),
              ),
            ),

            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
