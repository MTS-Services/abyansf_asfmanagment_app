import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_screen/booking_history_individual_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_event_widget.dart';
import 'package:abyansf_asfmanagment_app/view/widget/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style/appColor.dart';


class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

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
                HomeAppBar(showTitle: true,),
                const SizedBox(height: 15,),
                Text(
                  'Upcoming Event',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 10),
                ListView.builder(

                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.to(BookingHistoryIndividualPage());
                      },
                      child: CustomEventWidget());
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  'past Event',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.to(BookingHistoryIndividualPage());
                      },
                      child: CustomEventWidget(
                        status: true,
                      ),
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
