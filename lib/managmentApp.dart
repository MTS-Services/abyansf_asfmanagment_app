import 'package:abyansf_asfmanagment_app/utils/common/custom_bottom_bar.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/booking_history_individual_page.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/edit_profile.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/profile_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/beach_club_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/desert_activities_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/wellness_screen.dart';
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
      builder: (context, child) => ProfileScreen(),
    );
  }
}
