import 'dart:convert';
import 'dart:developer';
import 'package:abyansf_asfmanagment_app/data/model/network_response.dart';
import 'package:http/http.dart';
import '../state_holder/auth_controller.dart';

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url) async {
    print(AuthController.accessToken);
    try {
      Response response = await get(Uri.parse(url),headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${AuthController.accessToken ?? ''}',
      });
      log(response.statusCode.toString());
      log(response.body);

      if (response.statusCode == 200) {
        return NetworkResponse(
          true,
          response.statusCode,
          jsonDecode(response.body),
        );
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false, -1, null);
  }




  Future<NetworkResponse> postRequest(
    String url,
    Map<String, dynamic> body,
  ) async {
    try {
      Response response = await post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${AuthController.accessToken ?? ''}',
        },
        body: jsonEncode(body),
      );
      log(response.statusCode.toString());
      log(response.body);

      if (response.statusCode == 201) {
        return NetworkResponse(
          true,
          response.statusCode,
          jsonDecode(response.body),
        );
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false, -1, null);
  }




  //login request

  Future<NetworkResponse> loginRequest(
    String url,
    Map<String, dynamic> body,
  ) async {
    try {
      print(AuthController.setAccessToken.toString());
      Response response = await post(
        Uri.parse(url), headers: {
          'Content-Type': 'application/json',
        'Authorization': 'Bearer ${AuthController.accessToken ?? ''}',
        },
        body: jsonEncode(body),
      );

      log(response.statusCode.toString());
      log(response.body);

      final decodedResponse = jsonDecode(response.body);
      print("token: ${decodedResponse['token']}");

      if (response.statusCode == 200) {

        await AuthController.setAccessToken(decodedResponse['token']);
        return NetworkResponse(true, response.statusCode, decodedResponse);
      } else {
        return NetworkResponse(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkResponse(false, -1, null);
  }
}
