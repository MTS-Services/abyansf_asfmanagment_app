import 'package:abyansf_asfmanagment_app/models/booking_history_model/booking_history_model.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:flutter/material.dart';


class CustomBookingEventWidget extends StatelessWidget {
  final Booking bookingEvent;
  const CustomBookingEventWidget({super.key,required this.bookingEvent,});
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
                child: Image.network(bookingEvent.event.eventImg, fit: BoxFit.cover),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                          'Status: ',
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: AppStyles.fontXL,
                          fontWeight: AppStyles.weightRegular,
                          color: AppColors.lightWhite6,
                        ),
                      ),
                      Text(
                          bookingEvent.status,
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: AppStyles.fontXL,
                          fontWeight: AppStyles.weightRegular,
                          color: AppColors.lightLaserColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          bookingEvent.event.title,
                          style: TextStyle(
                            fontFamily: "Playfair Display",
                            fontSize: AppStyles.fontL,
                            fontWeight: AppStyles.weightBold,
                            color: AppColors.lightWhite6,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
                            bookingEvent.event.location,
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
                ],
              ),

              Spacer(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  Text(
                    '9.20 AM',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: AppStyles.weightRegular,
                      fontSize: AppStyles.fontM,
                      color: AppColors.lightLaserColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.lightLaserColor,
                      decorationThickness: 1.0,
                      height: 1.4,
                    ),
                  ),
                  Text(
                    'Sunday',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: AppStyles.fontXS,
                      fontWeight: AppStyles.weightRegular,
                      color: AppColors.lightWhite6,
                    ),
                  ),
                  Text(
                    '11 jun',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: AppStyles.fontXS,
                      fontWeight: AppStyles.weightRegular,
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
