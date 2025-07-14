import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CustomAppBar(title: 'Menu'),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(AssetPath.menuImage, fit: BoxFit.cover),
            ),
            //SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
