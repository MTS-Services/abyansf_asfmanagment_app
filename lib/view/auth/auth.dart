import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  Auth({super.key});

  @override
  bool isSelected = true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 353,
              child: Text(
                'Your World. Curated for Luxury.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF2E2E2E),
                  fontSize: 30,
                  fontFamily: 'Playfair Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 353,
              child: Text(
                'Supercars, yachts, travel, entertainment, lifestyle, and more exclusively tailored to your standards.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF4F4F4F),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Playfair Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: AppColors.primaryColor),
                      ),
                    ),
                    child: Text(
                      'Register',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 343,
              child: Text(
                'By Continuing, you agree to L’invite’s terms of services and acknowledge you’ve read our privacy policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF4F4F4F),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
