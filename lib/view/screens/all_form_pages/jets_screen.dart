import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_date_picker.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_drop_down.dart';
import 'package:flutter/material.dart';

import '../../../utils/style/app_text_styles.dart';
import '../../widget/increase_and_decrease.dart';

class JetsScreen extends StatelessWidget {
  JetsScreen({super.key});

  List<String> trip = ['One-way', 'Round trip'];

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
                CustomAppBar(title: 'Jets'),
                Text('Trip type', style: AppTextStyle.bold16),
                CustomDropdown(type: trip, hint: 'Round/One-way trip'),
                Text('Destination', style: AppTextStyle.bold16),
                Row(
                  children: [
                    Expanded(
                      child: CustomDropdown(
                        type: trip,
                        hint: 'Start Point',
                        labelText: 'From',
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomDropdown(
                        type: trip,
                        hint: 'Start Point',
                        labelText: 'To',
                      ),
                    ),
                  ],
                ),
                Text('Destination', style: AppTextStyle.bold16),
                Row(
                  children: [
                    Expanded(child: CustomDatePicker(labelText: 'From',)),
                    SizedBox(width: 10),
                    Expanded(child: CustomDatePicker(labelText:'To',)),
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
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Cancel'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: AppColors.lightLaserColor,
                                ),
                                borderRadius: BorderRadiusGeometry.circular(4)
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Request'),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_circle_right_outlined)
                          ],
                        ),),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
