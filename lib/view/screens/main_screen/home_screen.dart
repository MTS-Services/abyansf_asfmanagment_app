import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/event_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/individual_booking_history.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/notification_screen.dart';
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

final List<String> images = [
  AssetPath.hotelImage,
  AssetPath.splashScreen2,
  AssetPath.splashScreen3,
];
final List<Map<String, String>> servicesNames = [
  {'name': 'Super car', 'image': AssetPath.image12},
  {'name': 'Yacht charter', 'image': AssetPath.image13},
  {'name': 'Luxury Travel', 'image': AssetPath.image14},
  {'name': 'Professional', 'image': AssetPath.image15},
  {'name': 'Super car', 'image': AssetPath.image12},
  {'name': 'Yacht charter', 'image': AssetPath.image13},
  {'name': 'Luxury Travel', 'image': AssetPath.image14},
  {'name': 'Professional', 'image': AssetPath.image15},
];

class _HomeScreenState extends State<HomeScreen> {
  final CarouselSliderControllers _carouselSliderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(
                backGroundImage: AssetImage(AssetPath.profileImage),
                onPressed: () {
                  Get.to(() => NotificationScreen());
                },
              ),
              const SizedBox(height: 10),
              Text('Services', style: AppTextStyle.bold24),
              const SizedBox(height: 7),
              SizedBox(
                height: 145,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: servicesNames.length,
                  itemBuilder: (context, index) {
                    final name = servicesNames[index]['name'] ?? '';
                    final imagePath = servicesNames[index]['image'] ?? '';
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(imagePath),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            name,
                            style: AppTextStyle.bold14.copyWith(
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text('Highlight', style: AppTextStyle.bold24),
              const SizedBox(height: 13),

              /// Carousel Section
              InkWell(
                onTap: () {
                  Get.to(IndividualBookingHistory());
                },
                child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: CarouselContainer(
                        imagePath: images[index],
                        title: 'Luxury Dinner Venues',
                        location: 'Jumeirah Beach Residence',
                        personIcon: AssetPath.personImage,
                        clockIcon: AssetPath.clockImage,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 220,
                    autoPlay: false,
                    enlargeCenterPage: false,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.83,
                    autoPlayInterval: const Duration(seconds: 3),
                    onPageChanged: (index, reason) {
                      _carouselSliderController.currentIndex.value = index;
                    },
                  ),
                ),
              ),
              SizedBox(height: 8),
              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(images.length, (index) {
                    final isActive =
                        _carouselSliderController.currentIndex.value == index;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: isActive ? 16 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: isActive
                            ? AppColors.primaryColor
                            : AppColors.lightGrey,
                      ),
                    );
                  }),
                );
              }),

              const SizedBox(height: 20),
              Row(
                children: [
                  Text('Member Event', style: AppTextStyle.bold24),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Get.to(() => EventScreen(showBack: true));
                    },
                    child: Text(
                      'See all',
                      style: AppTextStyle.bold16.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(IndividualBookingHistory());
                  },
                  child: const CustomEventWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
