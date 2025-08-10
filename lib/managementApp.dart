
import 'package:abyansf_asfmanagment_app/view/screens/profile_screen/booking_history_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManagementApp extends StatelessWidget {
   const ManagementApp({super.key});



  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return CustomBottomBar();
      },
    );
  }
}



