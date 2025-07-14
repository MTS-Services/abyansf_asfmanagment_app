import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/individual_booking_history.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/notification_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_event_widget.dart';
import 'package:abyansf_asfmanagment_app/view/widget/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style/app_color.dart';

class EventScreen extends StatelessWidget {
  final bool showBack;

  const EventScreen({super.key, this.showBack = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(showBack: showBack, showTitle: true,onPressed: (){
                  Get.to(()=>NotificationScreen());
                },),
                const SizedBox(height: 15),
                Text('Upcoming Event', style: AppTextStyle.bold24),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(IndividualBookingHistory());
                      },
                      child: CustomEventWidget(),
                    );
                  },
                ),
                const SizedBox(height: 10),
                Text('past Event', style: AppTextStyle.bold24),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(IndividualBookingHistory());
                      },
                      child: CustomEventWidget(status: true),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
