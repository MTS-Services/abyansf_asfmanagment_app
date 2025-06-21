import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/event_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
    Center(child: Text('Explore')),
    Center(child: Text('Concierge')),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryDeepColor,
        unselectedItemColor: Colors.black,
        items: [
          _bottomNavItem(AssetPath.navHome, 'Home', 0),
          _bottomNavItem(AssetPath.navEvents, 'Events', 1),
          _bottomNavItem(AssetPath.navExplore, 'Explore', 2),
          _bottomNavItem(AssetPath.navConcierge, 'Concierge', 3),
          _bottomNavItem(AssetPath.navProfile, 'Profile', 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem _bottomNavItem(String assetPath, String label, int index){
    return BottomNavigationBarItem(icon: SvgPicture.asset(assetPath,height: 24,width: 24,
    colorFilter: ColorFilter.mode(
      _selectedIndex == index ? AppColors.primaryDeepColor : Colors.black,
      BlendMode.srcIn
    ),
    ),label: label,);
  }


}
