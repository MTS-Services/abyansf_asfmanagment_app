import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_event_widget.dart';
import 'package:abyansf_asfmanagment_app/view/widget/home_appbar.dart';
import 'package:abyansf_asfmanagment_app/view/widget/carousel_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controller/carousel_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int currentIndex = 0;
final List<String> images = [
  AssetPath.hotelImage,
  AssetPath.splashScreen2,
  AssetPath.splashScreen3,
];
final CarouselSliderControllers _carouselSliderController = Get.put(
  CarouselSliderControllers(),
);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                const SizedBox(height: 10,),
                Text('Services', style: AppTextStyle.bold24),
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
                              style: AppTextStyle.bold14,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Text(
                  'Highlight',
                  style: AppTextStyle.bold24,
                ),
                const SizedBox(height: 13),
        
                CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    return GestureDetector(
                      onTap: () {},
                      child: CarouselContainer(
                        imagePath: images[index],
                        title: 'Lusery Dinner Venues',
                        location: 'Jumeirah Beach Residence',
                        personIcon: AssetPath.personImage,
                        clockIcon: AssetPath.clockImage,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 220,
                    enlargeCenterPage: false,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayInterval: const Duration(seconds: 3),
                    viewportFraction: 0.83,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(images.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                width: currentIndex == index ? 16 : 5,
                                height: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: currentIndex == index
                                      ? AppColors.primaryColor
                                      : AppColors.lightWhite9,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Member Event',
                      style: AppTextStyle.bold24,
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style:TextStyle(
                          fontFamily: "Playfair Display",
                        fontWeight: AppStyles.weightMedium,
                        fontSize: AppStyles.fontL,
                        color: AppColors.primaryColor,
                      ),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CustomEventWidget();
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

