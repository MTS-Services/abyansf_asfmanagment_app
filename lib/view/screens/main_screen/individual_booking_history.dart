import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/view/widget/individual_booking_widget.dart';
import 'package:flutter/material.dart';

class IndividualBookingHistory extends StatelessWidget {
  const IndividualBookingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: IndividualBookingWidget(status: true),
          ),
        ),
      ),
    );
  }
}
