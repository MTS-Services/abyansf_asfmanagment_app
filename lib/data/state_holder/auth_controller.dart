import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static String accessToken='';
   // String? get accessToken => _accessToken;

  static Future<bool> saveUserEmail(String email) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString('mail', email);
  }
  static Future<String?> getUserEmail() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('mail');
  }
  static Future<void> setAccessToken(String token)async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('access_token', token);
  }

  static Future<void> getAccessToken() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    accessToken = sharedPreferences.getString('access_token') ?? '';  // Set accessToken to empty string if not found
  }


  static Future<void> deleteToken() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove('access_token');  // Remove the token from SharedPreferences
    accessToken = '';  // Reset the token in memory

    // Reload the token to make sure the in-memory state is up-to-date
    await getAccessToken();
  }



  static bool isLoggedIn() {
    return accessToken.isNotEmpty;  // If accessToken is not empty, user is logged in
  }

}
