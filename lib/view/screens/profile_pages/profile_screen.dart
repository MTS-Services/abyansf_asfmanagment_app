import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ImagePicker picker = ImagePicker();

  //final XFile? image = await picker.pickImage(source: ImageSource.gallery);

  //final XFile? photo = await picker.pickImage(source: ImageSource.camera);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greyBackgroundColor,
                      ),
                      child: Icon(Icons.keyboard_arrow_left_outlined),
                    ),
                    Text('My Profile', style: AppTextStyle.bold24),
                    SizedBox(),
                    Image.asset(AssetPath.basilEditOutline),
                  ],
                ),
              ),
              CircleAvatar(backgroundImage: AssetImage(AssetPath.profileImage),radius: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
