import 'package:abyansf_asfmanagment_app/utils/style/themdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app_bindings.dart';
import 'managmentApp.dart';

void main() {
  runApp(
      GetMaterialApp(

        debugShowCheckedModeBanner: false,
        initialBinding: AppBindings(),
        theme: themeData(),
        home: ManagmentApp()
      )
  );
}
