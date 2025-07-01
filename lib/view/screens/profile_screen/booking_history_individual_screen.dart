import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_event_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingHistoryIndividualPage extends StatelessWidget {
  const BookingHistoryIndividualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                CustomAppBar(title: 'Booking History'),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '09 May Saturday',
                      style: TextStyle(
                        color: const Color(0xFF333333),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '09:20PM',
                      style: TextStyle(
                        color: const Color(0xFF333333),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Status:',
                      style: TextStyle(
                        color: const Color(0xFF333333),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Confirmed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF00A600),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Luxury Dinner Venues',style: AppTextStyle.bold20,),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              child: Icon(Icons.location_on,size: 20,color: AppColors.lightLaserColor,),
                              decoration: const BoxDecoration(),
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              'Abu dhabi',
                              style: TextStyle(
                                color: AppColors.lightLaserColor,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                       SvgPicture.asset(AssetPath.lsiconUserCrowd),
                        Text(
                          'Max: 4',
                          style: TextStyle(
                            color: const Color(0xFF2E2E2E),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Text('About This Event',style: AppTextStyle.bold20,),
                SizedBox(
                  width: 353,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Luxury Dinners is an exclusive culinary experience designed for those who appreciate the finer things in life. Set in breathtaking venues and curated by renowned chefs, each event offers an unforgettable evening of gourmet cuisine, refined ambiance, and exceptional service.\nWhether it’s a private celebration, a corporate gathering, or a romantic evening, Luxury Dinners blends sophistication with sensory delight — delivering not just a meal, but a memory.\n\nWhat to Expect:\n',
                          style: TextStyle(
                            color: const Color(0xFF4F4F4F) /* Woodsmoke-700 */,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: ' Multi-course fine dining menu\n Expertly paired wines and beverages\n Live entertainment or ambient music\n Elegant table settings and décor\n Intimate gatherings with curated guest lists\n',
                          style: TextStyle(
                            color: const Color(0xFF4F4F4F) /* Woodsmoke-700 */,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '\nEvery detail is carefully crafted to ensure a seamless and indulgent experience from the moment you arrive.',
                          style: TextStyle(
                            color: const Color(0xFF4F4F4F) /* Woodsmoke-700 */,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                      ),
                      child: Text('Cancel this event')),
                ),
                Text('Upcoming Event',style: AppTextStyle.bold24,),
                CustomEventWidget(),
                CustomEventWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
