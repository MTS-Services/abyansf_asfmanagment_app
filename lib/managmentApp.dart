import 'package:abyansf_asfmanagment_app/data/state_holder/auth_controller.dart';
import 'package:abyansf_asfmanagment_app/view/screens/splash_creen/splash_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManagementApp extends StatelessWidget {
  const ManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: AuthController.getAccessToken(), // Wait for the token to be loaded
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While the token is being loaded, show a loading screen
          return SplashScreen(); // Or use any loading indicator you prefer
        } else if (snapshot.hasError) {
          return Center(child: Text("Error loading token"));
        } else {
          // After loading the token, check if the user is logged in
          if (AuthController.isLoggedIn()) {
            return CustomBottomBar();
          } else {
            print(AuthController.isLoggedIn());
            return SplashScreen();  // Show the splash screen or login screen
          }
        }
      },
    );
  }
}
