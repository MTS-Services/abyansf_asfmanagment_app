import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/hotel_and_villas.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/jets.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/life_style.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/super_car.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/yacht_requesr_form.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
  final List<Widget> lifeStyle = [
    LifeStyle(),
    LifeStyle(),
    LifeStyle(),
    LifeStyle(),
  ];
  final List<Widget> travel = [
    HotelAndVillas(),
    YachtRequesrForm(),
    Jets(),
    SuperCar(),
  ];



  ExploreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LifeStyles',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 8),
                CustomGridItem(targetScreens: lifeStyle),
                const SizedBox(height: 10,),
                Text(
                  'Travel',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 8),
                CustomGridItem(targetScreens: travel),
                const SizedBox(height: 10,),
                Text(
                  'Entertainment',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 8),
                CustomGridItem(targetScreens: travel),
                const SizedBox(height: 10,),
                Text(
                  'Professional',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 8),
                CustomGridItem(targetScreens: travel),
                const SizedBox(height: 10,),
                Text(
                  'Trips & expedition',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 8),
                CustomGridItem(targetScreens: travel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


