import 'package:abyansf_asfmanagment_app/view/screens/profile_screen/booking_history_individual_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CustomAppBar(title: 'Booking History'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(8.r),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                      ),
                      child: Text('All', style: AppTextStyle.regular14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(8.r),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                      ),
                      child: Text('Past', style: AppTextStyle.regular14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(8.r),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                      ),
                      child: Text('Active', style: AppTextStyle.regular14),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(8.r),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                      ),
                      child: Text('Cancel', style: AppTextStyle.regular14),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(BookingHistoryIndividualPage());
                    },
                    child: CustomEventWidget(status: true),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
