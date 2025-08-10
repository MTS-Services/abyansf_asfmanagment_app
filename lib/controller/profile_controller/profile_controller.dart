import 'dart:convert';

import 'package:abyansf_asfmanagment_app/api_services/profile_api_services/profile_api_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../models/user_profile_models/user_model.dart';

class ProfileController extends GetxController {
  final Rx<UserModel?> user = Rx<UserModel?>(null);
  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;




  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController imageController;



  @override
  void onInit() {
    fetchUserProfile();
    super.onInit();
  }

  Future<void> fetchUserProfile() async {
    try {
      isLoading(true);
      errorMessage('');
      final response = await ProfileApiServices.getUserProfile();
      if (response.statusCode == 200) {
        final userResponse= UserResponse.fromJson(json.decode(response.body));
        final userResponseData=userResponse.data;
        user(userResponseData);
        update();

        phoneController=TextEditingController(text: userResponseData.whatsapp);
        emailController=TextEditingController(text: userResponseData.email);
        nameController=TextEditingController(text: userResponseData.name);
        imageController=TextEditingController(text: userResponseData.profilePic);


      } else {
        throw Exception('Failed to load user profile');
      }
    } catch (e) {
      errorMessage(e.toString());
      Get.snackbar('Error', 'Failed to fetch profile: ${e.toString()}');
    } finally {
      isLoading(false);
    }
  }


  Future<void> updateUserProfile() async {
    try {
      isLoading(true);
      errorMessage('');
      final response = await ProfileApiServices.updateUserProfile(name: nameController.text, phone: phoneController.text);
      fetchUserProfile();
  }catch (e) {
      print(e.toString());
    }
  }


  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    imageController.dispose();
    super.dispose();
  }
}