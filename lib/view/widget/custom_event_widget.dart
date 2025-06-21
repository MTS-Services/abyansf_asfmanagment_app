import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:flutter/material.dart';

class CustomEventWidget extends StatelessWidget {
  const CustomEventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.greyColor,
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
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
                child: Image.asset(
                  AssetPath.rectangel,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Breakfast',
                    style: TextStyle(
                      fontSize: AppStyles.fontL,
                      fontWeight: AppStyles.weightBold,
                      color: AppColors.lightWhite6,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on,size: 16,color: AppColors.lightWhite6,),
                      const SizedBox(width: 4,),
                      Text('Dubai',style: TextStyle(fontSize: AppStyles.fontS,fontWeight: AppStyles.weightRegular,color: AppColors.lightWhite6),),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text('Attendance?',style: TextStyle(fontSize: AppStyles.fontM,fontWeight: AppStyles.weightRegular,color: AppColors.lightWhite6),),
                      const SizedBox(width: 8,),
                      InkWell(onTap: (){}, child: Text('Skip',style: TextStyle(color: AppColors.primaryColor,fontSize: AppStyles.fontM,fontWeight: AppStyles.weightRegular),))
                    ],
                  )

                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    '9.20',
                    style: TextStyle(
                      fontWeight: AppStyles.weightRegular,
                      fontSize: AppStyles.fontXXL,
                      color: AppColors.lightLaserColor.withAlpha(160),
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.lightLaserColor.withAlpha(160),
                      decorationThickness: 1.0,
                      height: 1.4,
                    ),
                  ),
                  Text('Sunday',style: TextStyle(fontSize: AppStyles.fontM,fontWeight: AppStyles.weightRegular,color: AppColors.lightWhite6),),
                  Text('11 jun',style: TextStyle(fontSize: AppStyles.fontM,fontWeight: AppStyles.weightRegular,color: AppColors.lightWhite6),),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}