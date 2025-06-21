import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Here',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF1A1A1A) /* Woodsmoke-950 */,
                fontSize: 40,
                fontFamily: 'Playfair Display',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome back you’ve\nbeen missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(maxLines: 1,),
            SizedBox(height: 20),
            TextFormField()
          ],
        ),
      ),
    );
  }
}
