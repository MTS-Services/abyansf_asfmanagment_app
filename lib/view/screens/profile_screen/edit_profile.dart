import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  title: 'Edit Profile',
                  action: Icon(Icons.check, color: AppColors.green),
                ),
                Text(
                  'Name',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.regular16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Mirabel Lily'),
                  ),
                ),
                Text(
                  'Phone number',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.regular16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: '(319) 555-0115'),
                  ),
                ),
                Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.regular16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    obscureText: isVisible == false,
                    decoration: InputDecoration(
                      hintText: 'mirable@1234',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Retype password',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.regular16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    obscureText: isVisible == false,
                    decoration: InputDecoration(
                      hintText: 'Retype password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
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
