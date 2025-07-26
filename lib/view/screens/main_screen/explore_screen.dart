import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/hotel_and_villas_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/jets_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/super_car_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/all_form_pages/yacht_request_form_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/massage.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/lifestyle/beach_club_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/desert_activities_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/lifestyle/dining_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/lifestyle/nightlife_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/lifestyle/wellness_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/water_sport_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
  final lifeStyle = [
    {
      'title': 'Restaurants',
      'image': AssetPath.lifeStyle1,
      'screen': DiningScreen(),
    },
    {
      'title': 'Beach club',
      'image': AssetPath.lifeStyle2,
      'screen': BeachClubScreen(),
    },
    {
      'title': 'Nightlife',
      'image': AssetPath.lifeStyle3,
      'screen': NightlifeScreen(),
    },
    {
      'title': 'Wellness',
      'image': AssetPath.lifeStyle4,
      'screen': WellnessScreen(),
    },
  ];
  final travel = [
    {
      'title': 'Hotel & Villas',
      'image': AssetPath.travel1,
      'screen': HotelAndVillasScreen(),
    },
    {
      'title': 'Yacht',
      'image': AssetPath.travel2,
      'screen': YachtRequestFormScreen(),
    },
    {
      'title': 'Private Jets',
      'image': AssetPath.travel3,
      'screen': JetsScreen(),
    },
    {
      'title': 'Super car',
      'image': AssetPath.travel4,
      'screen': SuperCarScreen(),
    },
  ];
  final entertainMent = [
    {
      'title': 'Desert activities',
      'image': AssetPath.entertainMent1,
      'screen': DesertActivitiesScreen(),
    },
    {
      'title': 'Water sports',
      'image': AssetPath.entertainMent2,
      'screen': WaterSportScreen(),
    },
    {
      'title': 'Helicopter tour',
      'image': AssetPath.entertainMent3,
      'screen': Massage(),
    },
    {
      'title': 'City tour',
      'image': AssetPath.entertainMent4,
      'screen': Massage(),
    },
  ];
  final professional = [
    {
      'title': 'VIP Chauffeur',
      'image': AssetPath.professional1,
      'screen': Massage(),
    },
    {
      'title': 'Event Hostess and Models',
      'image': AssetPath.entertainMent1,
      'screen': Massage(),
    },
    {
      'title': 'Personal Shoppers',
      'image': AssetPath.professional3,
      'screen': Massage(),
    },
    {
      'title': 'Luxury Real Estate Consultant Luxury Real Estate Consultant',
      'image': AssetPath.professional4,
      'screen': Massage(),
    },
  ];
  final tripsAndExpedition  = [
    {
      'title': 'Arctic Exploration',
      'image': AssetPath.trips1,
      'screen': Massage(),
    },
    {
      'title': 'Africa Safari',
      'image': AssetPath.trips2,
      'screen': Massage(),
    },
  ];

  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(title: "Explore", showBack: false),
                Text('LifeStyles', style: AppTextStyle.bold24),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    Get.to(BeachClubScreen());
                  },
                  child: CustomGridItem(gridItems: lifeStyle),
                ),
                const SizedBox(height: 10),
                Text('Travel', style: AppTextStyle.bold24),
                const SizedBox(height: 8),
                CustomGridItem(gridItems: travel),
                const SizedBox(height: 10),
                Text('Entertainment', style: AppTextStyle.bold24),
                const SizedBox(height: 8),
                CustomGridItem(gridItems: entertainMent),
                const SizedBox(height: 10),
                Text('Professional', style: AppTextStyle.bold24),
                const SizedBox(height: 8),
                CustomGridItem(gridItems: professional),
                const SizedBox(height: 10),
                Text('Trips & expedition', style: AppTextStyle.bold24),
                const SizedBox(height: 8),
                CustomGridItem(gridItems: tripsAndExpedition),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
