import 'package:abyansf_asfmanagment_app/utils/themdata.dart';
import 'package:abyansf_asfmanagment_app/view/auth/loginScreen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/splash_creen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Managmentapp extends StatelessWidget {
  const Managmentapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeData(),
          home: LoginScreen(),

        );
      },
    );
  }
}
