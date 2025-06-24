import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:flutter/material.dart';
import 'package:abyansf_asfmanagment_app/view/widget/chat_bubble.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: 20,
                itemBuilder: (context, index ) {
                  final bool isMe = index % 2 == 0;
                  return ChatBubble(
                    message: "Remon vai $index",
                    isMe: isMe,
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  suffixIcon:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.mic_none_sharp),
                      SizedBox(width: 10,),
                      Icon(Icons.send_outlined),
                      SizedBox(width: 10,),
                    ],
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: AppColors.primaryColor)
                  ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: AppColors.primaryColor)
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

