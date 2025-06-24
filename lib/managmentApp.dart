
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/beach_club_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/message_screen.dart';

import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/single_beach_club_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ManagmentApp extends StatelessWidget {
  const ManagmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MessageScreen()
    );
  }
}
