import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_date_picker.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_drop_down.dart';
import '../../widget/increase_and_decrease.dart';

class HotelAndVillasScreen extends StatelessWidget {
  HotelAndVillasScreen({super.key});

  final List<String> type = ['Ac', 'NonAc', 'Premium'];

  int adults = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(title: 'Hotel & Villas'),
                Text('Type of accommodation', style: AppTextStyle.bold16),
                CustomDropdown(type: type, hint: 'Select accommodation'),
                Text('Location', style: AppTextStyle.bold16),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.lightLaserColor,
                        ),
                      ),
                      hintText: 'Dubai',
                      fillColor: AppColors.white,
                    ),
                  ),
                ),
                Text('Name of hotel', style: AppTextStyle.bold16),
                CustomDropdown(type: type, hint: 'Name of hotel'),
                Text('Date', style: AppTextStyle.bold16),
                Row(
                  children: [
                    CustomDatePicker(labelText: 'Check in'),
                    SizedBox(width: 10),
                    CustomDatePicker(labelText: 'Check out'),
                  ],
                ),
                Text('Number of guest', style: AppTextStyle.bold16),
                Row(
                  children: [
                    IncreaseAndDecrease(type: 'Adults'),
                    SizedBox(width: 10),
                    IncreaseAndDecrease(type: 'Children'),
                  ],
                ),
                Text('Contacts', style: AppTextStyle.bold16),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your WhatsApp number',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.lightLaserColor,
                        ),
                      ),
                      fillColor: AppColors.white,
                    ),
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.white,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.lightLaserColor),
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        child: Text('Cancel'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Request'),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_circle_right_outlined),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20     ,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
