import 'package:abyansf_asfmanagment_app/utils/style/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';  // Import ScreenUtil
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app_bindings.dart';
import 'managmentApp.dart';

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
          home: ManagmentApp(),
          theme: themeData(),
        );
      },
    ),
  );
}
