import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view_models/controller/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final ImagePickerController _imagePickerController =
      Get.find<ImagePickerController>();
  final List<Map<String, dynamic>> items = [
    {
      'leading': SvgPicture.asset(AssetPath.solarCalendar,height: 20,width: 20,),
      'title': Text('Booking History',style: AppTextStyle.regular16,),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': Scaffold(body: Container(color: Colors.red,),),
    },
    {
      'leading': SvgPicture.asset(AssetPath.solarSettings),
      'title': Text('Account settings',style: AppTextStyle.regular16,),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': Scaffold(body: Container(color: Colors.yellow,),),
    },
    {
      'leading': SvgPicture.asset(AssetPath.solarCalendar,height: 20,width: 20,),
      'title': Text('Invite your friend',style: AppTextStyle.regular16,),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': Scaffold(body: Container(color: Colors.yellow,),),
    },
    {
      'leading': SvgPicture.asset(AssetPath.privacyPolicy),
      'title': Text('Privacy & policy',style: AppTextStyle.regular16,),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': Scaffold(body: Container(color: Colors.yellow,),),
    },
    {
      'leading': Icon(Icons.logout,color: AppColors.red,),
      'title': Text('Log Out',style: TextStyle(
        color: AppColors.red,
        fontSize: 16,
        fontFamily: 'Playfair Display',
        fontWeight: FontWeight.w500,
      ),),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': Scaffold(body: Container(color: Colors.yellow,),),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
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
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(AssetPath.profileImage),
                            radius: 34,
                            backgroundColor: Colors.white,
                          ),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: InkWell(
                              onTap: () => _imagePickerController.pickImage(),
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.camera_alt_outlined, size: 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mirable Lily', style: AppTextStyle.bold24),
                          Text('mirable123', style: AppTextStyle.regular12),
                        ],
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFC7AE6A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'Premium',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  _infoRow(Icons.phone, '(319) 555-0115'),
                  SizedBox(height: 12),
                  _infoRow(Icons.email, 'mirable@gmail.com'),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    leading: item['leading'],
                    title: item['title'],
                    trailing: item['trailing'],
                    onTap: (){
                      Get.to(() => item['route']);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget _infoRow(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, size: 20, color: Colors.black54),
      SizedBox(width: 12),
      Text(
        text,
        style: TextStyle(
          color: Color(0xFF454545),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}