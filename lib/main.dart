
import 'package:abyansf_asfmanagment_app/data/state_binding/app_bindings.dart';
import 'package:abyansf_asfmanagment_app/managmentApp.dart';
import 'package:abyansf_asfmanagment_app/utils/style/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();  // Ensure proper initialization
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: AppBindings(),
          home: ManagementApp(),
          theme: themeData(),
        );
      },
    ),
  );
}
