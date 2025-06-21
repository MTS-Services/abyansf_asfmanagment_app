import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/utils/style/themdata.dart';
import 'package:abyansf_asfmanagment_app/view/auth/recoverScreen.dart';
import 'package:abyansf_asfmanagment_app/view/auth/signupScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            TextFormField(maxLines: 1),
            SizedBox(height: 20),
            TextFormField(),
            SizedBox(height: 20),

            // text button //
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Recoverscreen()),
                );
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
                    onPressed: () {},
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
                      MaterialPageRoute(builder: (context) => Signupscreen()),
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
    );
  }
}
