import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManagmentApp extends StatelessWidget {
   ManagmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return ProfileScreen(); // ✅ or SplashScreen, etc.
      },
    );
  }
}
