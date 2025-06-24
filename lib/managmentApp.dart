import 'package:abyansf_asfmanagment_app/utils/common/custom_bottom_bar.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/hotel_and_villas.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/jets.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/life_style.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/order_place.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/super_car.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/yacht_requesr_form.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/booking_history.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/edit_profile.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/profile_screen.dart';
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
      builder: (context, child) => OrderPlace(),
    );
  }
}
