import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/contact_whatsapp_controller/contact_whatsapp_controller.dart';
import '../../../utils/style/appColor.dart';

class MassageScreen extends StatelessWidget {
  MassageScreen({super.key});

  final _contactWhatsappController = Get.put(ContactWhatsappController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Obx(
            () => Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.greyBackgroundColor,
                          ),
                          child: const Icon(Icons.keyboard_arrow_left_outlined),
                        ),
                      ),
                      Spacer(),
                      //Image.asset(AssetPath.maskGroup, width: 30, height: 30),
                      SizedBox(width: 10),
                      Text(_contactWhatsappController.serviceData.value!.name, style: AppTextStyle.bold24),
                      Spacer(),
                      SizedBox(),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(_contactWhatsappController.serviceData.value!.img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _contactWhatsappController.serviceData.value!.name,
                            style: AppTextStyle.bold20.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: AppColors.white),
                              Text(
                                'Jumeirah Beach Residence',
                                style: AppTextStyle.regular10.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(height: 10),
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffDFD2A9), Color(0xffEEE9D3)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'To learn more about this service in detail, contact now on WhatsApp.',
                          style: AppTextStyle.bold16,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 0),
                        onPressed: () {

                        },
                        child: Text('Whats App'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
