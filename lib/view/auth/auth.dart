import 'package:abyansf_asfmanagment_app/view/auth/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';

class Auth extends StatelessWidget {
  Auth({super.key});

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                physics: const NeverScrollableScrollPhysics(),
                children: imagePaths.map((path) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(path, fit: BoxFit.cover),
                  );
                }).toList(),
              ),
            ),

            const Spacer(),

            SizedBox(
              width: 353,
              child: Text(
                'Your World. Curated for Luxury.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 30,
                  fontWeight: AppStyles.weightMedium,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Description
            SizedBox(
              width: 353,
              child: Text(
                'Supercars, yachts, travel, entertainment, lifestyle, and more exclusively tailored to your standards.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Buttons //
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
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
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontFamily: 'Playfair Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Terms and Conditions
            SizedBox(
              width: 343,
              child: Text(
                'By Continuing, you agree to L’invite’s terms of services and acknowledge you’ve read our privacy policy',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF4F4F4F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
