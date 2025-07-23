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
    // _accessToken=token;
    // print("Access Token Saved: $_accessToken");
  }

  static Future<void> getAccessToken()async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    accessToken=sharedPreferences.getString('access_token')??'null';
    // print("Access Token: $_accessToken");
  }
  static bool isLoggedIn(){

    if(accessToken=="null"){
      return false;
    }else{
      return true;
    }
  }
}
