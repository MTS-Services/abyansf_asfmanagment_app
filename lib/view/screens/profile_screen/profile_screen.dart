import 'package:abyansf_asfmanagment_app/view/auth/loginScreen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/profile_screen/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../utils/assets_path.dart';
import '../../widget/custom_app_bar.dart';
import '../../../utils/style/appColor.dart';
import '../../../utils/style/app_text_styles.dart';
import '../../../view_models/controller/image_picker_controller.dart';
import 'booking_history_screen.dart';
import 'edit_profile.dart';
import 'invite_friend_show_log.dart';

class ProfileScreen extends StatelessWidget {
  final ImagePickerController _imagePickerController = Get.find();
  final List<Map<String, dynamic>> items = [
    {
      'leading': SvgPicture.asset(
        AssetPath.solarCalendar,
        height: 20,
        width: 20,
      ),
      'title': Text(
        'Booking History',
        style: AppTextStyle.regular16.copyWith(color: AppColors.blackColor),
      ),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': BookingHistory(),
    },
    {
      'leading': SvgPicture.asset(
        AssetPath.inviteFriend,
        height: 20,
        width: 20,
      ),
      'title': Text(
        'Invite your friend',
        style: AppTextStyle.regular16.copyWith(color: AppColors.blackColor),
      ),
      'trailing': Icon(Icons.arrow_forward_ios),
      'onTap': (BuildContext context) {
        InviteFriendShowLog.show(context);
      },
    },
    {
      'leading': SvgPicture.asset(AssetPath.privacyPolicy),
      'title': Text(
        'Privacy & policy',
        style: AppTextStyle.regular16.copyWith(color: Colors.black),
      ),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': PrivacyPolicy(),
    },
    {
      'leading': Icon(Icons.logout, color: AppColors.red),
      'title': Text(
        'Log Out',
        style: TextStyle(fontSize: 16, color: AppColors.red),
      ),
      'trailing': Icon(Icons.arrow_forward_ios),
      'route': LoginScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CustomAppBar(
                      title: 'My Profile',
                      // action: InkWell(onTap:  Get.to(),child: Image.asset(AssetPath.basilEditOutline,height: 24,width: 24,)),
                      action: IconButton(
                        onPressed: () {
                          Get.to(EditProfile());
                        },
                        icon: Image.asset(AssetPath.basilEditOutline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  AssetPath.profileImage,
                                ),
                                radius: 34,
                                backgroundColor: Colors.white,
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: InkWell(
                                  onTap: () =>
                                      _imagePickerController.pickImage(),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      size: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mirable Lily', style: AppTextStyle.bold20),
                              Row(
                                children: [
                                  Center(
                                    child: Text(
                                      'mirable123',
                                      style: AppTextStyle.regular12,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Chip(
                                    label: Text(
                                      'Private',
                                      style: AppTextStyle
                                          .interBold10, // Your custom text style
                                    ),
                                    backgroundColor: const Color(0xFFC7AE6A),
                                    // Background color
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.w,
                                      vertical: 4.h,
                                    ),
                                    // Responsive padding using ScreenUtil
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        10.r,
                                      ), // Responsive border radius using ScreenUtil
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetPath.iconParkSolid,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '(319) 555-0115',
                          style: AppTextStyle.interRegular16,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetPath.icRoundEmail,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'mirable@gmail.com',
                          style: AppTextStyle.interRegular16,
                        ),
                      ],
                    ),
                  ],
                ),
              ), 
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    leading: item['leading'],
                    title: item['title'],
                    trailing: item['trailing'],
                    titleTextStyle: TextStyle(fontSize: 14.sp),
                    onTap: () {
                      if (item.containsKey('onTap')) {
                        item['onTap'](context);
                      } else {
                        Get.to(item['route']);
                      }
                    },
                  );
                },
              ),
            ],
          ),
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
