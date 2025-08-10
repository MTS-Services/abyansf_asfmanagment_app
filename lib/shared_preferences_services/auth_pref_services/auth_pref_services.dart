import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthPrefServices{
  static RxString token="null".obs;
  static setToken({required String token})async{
    final SharedPreferences prefs= await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }


  static getToken() async {
    final SharedPreferences prefs= await SharedPreferences.getInstance();
    final String? userToken = prefs.getString('token');
    if(userToken!="null"){
      token.value=userToken!;
    }
  }


}