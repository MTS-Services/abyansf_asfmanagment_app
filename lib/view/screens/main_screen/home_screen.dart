import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/booking_history_page.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_event_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Services',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 7),
              SizedBox(
                height: 145,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              AssetPath.splashScreen1,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: AppStyles.fontM,
                              fontWeight: AppStyles.weightBold,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text(
                'Highlight',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (context, index, realIndex) {
                  return GestureDetector(
                    onTap: (){
                      Get.off(BookingHistoryPage());
                    },
                    child: Container(
                      width: 296,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(AssetPath.hotelImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Spacer(),
                            Text(
                              'Lusery Diner venues',
                              style: TextStyle(
                                fontSize: AppStyles.fontXL,
                                fontWeight: AppStyles.weightBold,
                                color: AppColors.lightWhite6,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: AppColors.lightWhite6,
                                ),
                                Text(
                                  'Basundhara city',
                                  style: TextStyle(
                                    fontSize: AppStyles.fontS,
                                    fontWeight: AppStyles.weightBold,
                                    color: AppColors.lightWhite9,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 28,
                                  width: 35.58,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      AssetPath.personImage,
                                      scale: 4,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 28,
                                  width: 35.58,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      AssetPath.clockImage,
                                      scale: 4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 216,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: const Duration(seconds: 3),
                  viewportFraction: 0.8,
                ),
              ),

              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Member Event',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Spacer(),
                  TextButton(onPressed: (){},
                      child: Text('See all', style: TextStyle(
                    fontWeight: AppStyles.weightMedium,
                    fontSize: AppStyles.fontL,
                    color: AppColors.primaryColor.withAlpha(160),
                  ),))
      
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return CustomEventWidget();
                  })

            ],
          ),
        ),
      ),
    );
  }
}




