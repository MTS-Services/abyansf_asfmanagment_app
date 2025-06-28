import 'dart:core';

import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/event_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/explore_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/profile_screen/profile_screen.dart';


class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    EventScreen(),
    ExploreScreen(),
    ProfileScreen(),
  ];
  final List<String> label = ['Home', 'Events', 'Explore',  'Profile'];
  final List<String> icons = [
    AssetPath.navHome,
    AssetPath.navEvents,
    AssetPath.navExplore,
    AssetPath.navProfile,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [BoxShadow(
            color: Colors.black,
            offset: Offset(0, 10),
            blurRadius: 25
          )],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(icons.length, (index){
            final isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () => setState(() => _selectedIndex = index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(icons[index],
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    isSelected ? AppColors.primaryDeepColor : AppColors.blackColor,
                    BlendMode.srcIn,
                  ),),
                  SizedBox(height: 4),
                  Text(label[index], style: TextStyle(
                    color: const Color(0xFF1A1A1A),
                    fontSize: 8,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),)
                ],
              ),
            );
          }),
        ),
      )
    );
  }
}
