import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_style.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create New Password',
              textAlign: TextAlign.center,
              style: AppTextStyle.bold40,
            ),
            SizedBox(height: 20),
            Text(
              'Type and confirm a secure new password for your amount',
              textAlign: TextAlign.center,

              style: AppTextStyle.interRegular16,
            ),
            SizedBox(height: AppStyles.heightM),
            TextFormField(decoration: InputDecoration(hintText: 'Name')),
            SizedBox(height: 20),
            TextFormField(decoration: InputDecoration(hintText: 'Email')),
            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => CustomBottomBar());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text('Save', style: AppTextStyle.bold16),
                  ),
                ),
              ],
            ),

            // text button //
          ],
        ),
      ),
    );
  }
}
