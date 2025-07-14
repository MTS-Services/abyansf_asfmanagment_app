import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_style.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/beach_club.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/dining.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/night_life.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/wellness.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/menu_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/card_container.dart';
import 'package:abyansf_asfmanagment_app/view/widget/day_time_row.dart';
import 'package:abyansf_asfmanagment_app/view/widget/carousel_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../view_models/controller/carousel_controller.dart';

class SingleDiningScreen extends StatelessWidget {
  SingleDiningScreen({super.key});

  final CarouselSliderControllers _carouselSliderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 290,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetPath.lifeStyle1),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white70.withAlpha(100),
                          child: Icon(Icons.keyboard_arrow_left_outlined),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Exclusive Gourmet Experiences',
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.bold20,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: AppColors.blackColor,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "Jumeirah Beach Residence",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: AppStyles.fontXS,
                                    fontWeight: AppStyles.weightRegular,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 107,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(MenuScreen());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Menu",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 20,
                                color: AppColors.blackColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(children: [Text("Photos", style: AppTextStyle.bold24)]),
                  const SizedBox(height: 15),
                  CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return CarouselContainer(
                        width: 146,
                        imagePath: AssetPath.image14,
                      );
                    },
                    options: CarouselOptions(
                      height: 100,
                      enlargeCenterPage: false,
                      autoPlay: false,
                      aspectRatio: 16 / 9,
                      autoPlayInterval: const Duration(seconds: 3),
                      viewportFraction: 0.43,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        // Correctly update currentIndex when page changes
                        _carouselSliderController.updateIndex(index);
                      },
                    ),
                  ),

                  // Indicator Row
                  Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(3, (index) {
                              return GestureDetector(
                                onTap: () {
                                  _carouselSliderController.currentIndex.value;
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Container(
                                    width:
                                        _carouselSliderController
                                                .currentIndex
                                                .value ==
                                            index
                                        ? 16
                                        : 5,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color:
                                          _carouselSliderController
                                                  .currentIndex
                                                  .value ==
                                              index
                                          ? AppColors
                                                .primaryColor // Active color
                                          : AppColors
                                                .lightGrey, // Inactive color
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    );
                  }),
                  const SizedBox(height: 7),
                  Text("Member Privileges", style: AppTextStyle.bold24),
                  const SizedBox(height: 10),
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: CardContainer(image: AssetPath.priorityImage),
                      ),
                      Expanded(
                        child: CardContainer(image: AssetPath.drinkImage),
                      ),
                      Expanded(
                        child: CardContainer(image: AssetPath.otherImage),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Drink on arrival and  appetizer",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: AppStyles.fontS,
                      fontWeight: AppStyles.weightRegular,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text("Description", style: AppTextStyle.bold24),
                  const SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indusLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indusLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indusLorem Ipsum is simply dummy text of the printing and type",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: AppStyles.fontM,
                      fontWeight: AppStyles.weightRegular,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text("Hours", style: AppTextStyle.bold24),
                  const SizedBox(height: 10),
                  dayTimeRow("Wednesday", "09:00 PM - 03:00 AM"),
                  dayTimeRow("Thursday", "09:00 PM - 03:00 AM"),
                  dayTimeRow("Friday", "09:00 PM - 03:00 AM"),
                  dayTimeRow("Saturday", "09:00 PM - 03:00 AM"),
                  dayTimeRow("Sunday", "09:00 PM - 03:00 AM"),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: AppColors.lightLaserColor,
                              ),
                              borderRadius: BorderRadiusGeometry.circular(4),
                            ),
                          ),
                          child: Text('Enquire'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => DiningForm());
                          },
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Reserve'),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_circle_right_outlined),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
