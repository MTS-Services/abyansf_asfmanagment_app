import 'package:abyansf_asfmanagment_app/app_bindings.dart';
import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  final ImagePickerController _imagePickerController = Get.find<ImagePickerController>();

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
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(backgroundImage: AssetImage(AssetPath.profileImage),radius: 40,backgroundColor: Colors.white,),
                   Positioned(
                     bottom: 5,
                     right: 5,
                     child: InkWell(
                       onTap: ()=>_imagePickerController.pickImage(),
                       child: Container(
                         width: 20,
                         height: 20,
                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.white,
                         ),
                         child: Icon(Icons.camera_alt_outlined,size: 13),

                       ),
                     ),
                   )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
