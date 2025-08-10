import 'dart:convert';

import 'package:abyansf_asfmanagment_app/api_services/api_urls/api_urls.dart';
import 'package:abyansf_asfmanagment_app/shared_preferences_services/auth_pref_services/auth_pref_services.dart';
import 'package:http/http.dart' as http;

class ProfileApiServices {
  static Future<dynamic> getUserProfile() async {
    try {
      final response = await http.get(
        Uri.parse(ApiUrls.getProfileInfoUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ApiUrls.token}',
        },
      );
      return response;
    } catch (e) {
      return e.toString();
    }
  }


  static Future<dynamic> updateUserProfile({
    required String name,
    required String phone,
  }) async {
    try{
      final response = await http.put(
        Uri.parse("https://backend-ab.mtscorporate.com/api/users/cmdo1tz8m000jqn0kkijncupz"),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ApiUrls.token}',
        },
        body: json.encode({'name': name, 'whatsapp': phone}),
      );
      return response;
    }catch(e){
      print(e.toString());
    }
  }


}

