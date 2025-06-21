import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:flutter/material.dart';

class BookingHistoryPage extends StatelessWidget {
  final Image? image;
  const BookingHistoryPage({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetPath.hotelImage))),

    )

    );
  }
}
