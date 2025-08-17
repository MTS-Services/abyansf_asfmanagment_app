import 'package:flutter/material.dart';

class NotificationCardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String time;
  const NotificationCardWidget({super.key, required this.title, required this.description, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 96,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 30,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 48,
              height: 48,
              decoration: ShapeDecoration(
                color: const Color(0xFFF8F6EE) /* Laser-50 */,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Icon(Icons.notifications_none_outlined,color: Theme.of(context).primaryColor,size: 30,),
            ),
          ),
          SizedBox(width: 15,),
          SizedBox(
            width: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Playfair Display',
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '9min ago',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF888888) /* Woodsmoke-400 */,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        description,
                        style: TextStyle(
                          color: const Color(0xFF6D6D6D) /* Woodsmoke-500 */,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 12,
                      height: 12,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFBD9B52) /* Laser-400 */,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(68),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
