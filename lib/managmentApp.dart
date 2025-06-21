import 'package:abyansf_asfmanagment_app/utils/style/themdata.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app_bindings.dart';

class ManagmentApp extends StatelessWidget {
   ManagmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, builder) {
        return   GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: AppBindings(),
          theme: themeData(),
          home: ProfileScreen(),
        );
      },
    );
  }
}
