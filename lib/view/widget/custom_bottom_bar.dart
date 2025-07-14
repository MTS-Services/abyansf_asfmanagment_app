import 'dart:core';

import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/event_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/explore_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/custom_bottom_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../screens/profile_screen/profile_screen.dart';

class CustomBottomBar extends StatelessWidget {
  final int? index;

  CustomBottomBar({super.key, this.index});

  final List<Widget> _pages = [
    HomeScreen(),
    EventScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];

  final List<String> label = ['Home', 'Events', 'Explore', 'Profile'];

  final List<String> icons = [
    AssetPath.navHome,
    AssetPath.navEvents,
    AssetPath.navExplore,
    AssetPath.navProfile,
  ];

  @override
  Widget build(BuildContext context) {
    final CustomBottomController controller = Get.put(CustomBottomController());

    // Index apply after build
    if (index != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.changeIndex(index!);
      });
    }

    return GetBuilder<CustomBottomController>(
      builder: (controller) {
        return Scaffold(
          body: _pages[controller.selectedIndex],
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 10),
                  blurRadius: 25,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(icons.length, (i) {
                final isSelected = controller.selectedIndex == i;
                return GestureDetector(
                  onTap: () => controller.changeIndex(i),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        icons[i],
                        width: 26,
                        height: 26,
                        colorFilter: ColorFilter.mode(
                          isSelected
                              ? AppColors.primaryDeepColor
                              : AppColors.blackColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        label[i],
                        style: TextStyle(
                          color: isSelected
                              ? AppColors.primaryDeepColor
                              : AppColors.blackColor,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
