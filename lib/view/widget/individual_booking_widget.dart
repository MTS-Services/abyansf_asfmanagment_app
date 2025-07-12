import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndividualBookingWidget extends StatelessWidget {
  final bool status;

  const IndividualBookingWidget({super.key, this.status = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        CustomAppBar(title: status ? 'Event details' : 'Booking History'),
        Container(
          width: double.infinity,
          height: 228,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetPath.frame190),
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(8),
          ),
        ),
        Row(
          children: [
            Text('09 May Saturday', style: AppTextStyle.interRegular12),
            Spacer(),
            Text('09:20PM', style: AppTextStyle.interRegular12),
            if (!status) ...[
              Spacer(),
              Text('Status:', style: AppTextStyle.interRegular12),
              Text(
                'Confirmed',
                textAlign: TextAlign.center,
                style: AppTextStyle.interRegular12.copyWith(
                  color: Color(0xFF00A600),
                ),
              ),
            ],
          ],
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Luxury Dinner Venues', style: AppTextStyle.bold20),
                Row(
                  children: [
                    SvgPicture.asset(AssetPath.lsiconUserCrowd),
                    Text('Max: 4', style: AppTextStyle.interRegular12),
                  ],
                ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(),
              child: Icon(
                Icons.location_on,
                size: 20,
                color: AppColors.lightLaserColor,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              'Abu dhabi',
              style: AppTextStyle.interRegular12.copyWith(
                color: AppColors.lightLaserColor,
              ),
            ),
          ],
        ),
        Text('About This Event', style: AppTextStyle.bold20),
        Text(
          'Luxury Dinners is an exclusive culinary experience designed for those who appreciate the finer things in life. Set in breathtaking venues and curated by renowned chefs, each event offers an unforgettable evening of gourmet cuisine, refined ambiance, and exceptional service.\nWhether it’s a private celebration, a corporate gathering, or a romantic evening, Luxury Dinners blends sophistication with sensory delight — delivering not just a meal, but a memory.\n\nWhat to Expect:',
          style: AppTextStyle.interRegular16.copyWith(
            color: AppColors.lightBlackColor,
          ),
        ),
        Text(
          ' Multi-course fine dining menu\n Expertly paired wines and beverages\n Live entertainment or ambient music\n Elegant table settings and décor\n Intimate gatherings with curated guest lists\n',
          style: AppTextStyle.interRegular16.copyWith(
            color: AppColors.lightBlackColor,
          ),
        ),
        Text(
          'Every detail is carefully crafted to ensure a seamless and indulgent experience from the moment you arrive.',
          style: AppTextStyle.interRegular16.copyWith(
            color: AppColors.lightBlackColor,
          ),
        ),
        SizedBox(height: 10),
        if (status) ...[
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  "Skip",
                  style: AppTextStyle.bold20.copyWith(
                    color: AppColors.primaryDeepColor,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                height: 44,
                width: 151,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(bottom: 0.9),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Attendance",
                    style: AppTextStyle.bold16.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ] else ...[
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: Text('Cancel this event', style: AppTextStyle.bold16),
            ),
          ),
        ],
        SizedBox(height: 10),
        Text('Upcoming Event', style: AppTextStyle.bold24),
        CustomEventWidget(),
        CustomEventWidget(),
      ],
    );
  }
}
