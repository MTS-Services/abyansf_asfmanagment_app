import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_style.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomEventWidget extends StatelessWidget {
  final bool status;

  const CustomEventWidget({super.key, this.status = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.greyColor,
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                height: 94,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(AssetPath.rectAngel, fit: BoxFit.cover),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (status)
                    RichText(
                      text: TextSpan(
                        text: 'Status:',
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: AppStyles.fontXL,
                          fontWeight: AppStyles.weightRegular,
                          color: AppColors.lightWhite6,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' Cancel',
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: AppStyles.fontXL,
                              fontWeight: AppStyles.weightRegular,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (status) Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Breakfast',
                        style: TextStyle(
                          fontFamily: "Playfair Display",
                          fontSize: AppStyles.fontL,
                          fontWeight: AppStyles.weightBold,
                          color: AppColors.lightWhite6,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: AppColors.lightWhite6,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Dubai',
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: AppStyles.fontS,
                              fontWeight: AppStyles.weightRegular,
                              color: AppColors.lightWhite6,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (status) Spacer(),

                  if (!status) ...[
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'Attendance?',
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: AppStyles.fontS,
                            fontWeight: AppStyles.weightRegular,
                            color: AppColors.lightWhite6,
                          ),
                        ),
                        const SizedBox(width: 8),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontFamily: "Inter",
                              color: AppColors.primaryColor,
                              fontSize: AppStyles.fontS,
                              fontWeight: AppStyles.weightRegular,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),

              Spacer(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: status
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  Text(
                    '9.20 AM',
                    style: AppTextStyle.interRegular14.copyWith(
                      fontFamily: "Inter",
                      color: AppColors.lightLaserColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.lightLaserColor,
                      decorationThickness: 1.0,
                      height: 1.4,
                    ),
                  ),
                  Text(
                    'Sunday',
                    style: AppTextStyle.interRegular10.copyWith(
                      color: AppColors.lightWhite6,
                    ),
                  ),
                  Text(
                    '11 jun',
                    style: AppTextStyle.interRegular10.copyWith(
                      color: AppColors.lightWhite6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
