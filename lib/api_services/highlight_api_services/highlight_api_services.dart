import 'dart:convert';
import 'package:abyansf_asfmanagment_app/api_services/api_urls/api_urls.dart';
import 'package:http/http.dart' as http;

import '../../models/highlight_model/highlight_model.dart';

class HighlightApiService {

  static Future<HighlightResponse> fetchHighlights() async {
    try {
      final response = await http.get(
          Uri.parse('${ApiUrls.baseUrl}/highlights'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${ApiUrls.token}',
          }
      );
      print("highlight response code: ${response.statusCode}");
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return HighlightResponse.fromJson(jsonData);
      } else {
        throw Exception('Failed to load highlights: Status Code ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load highlights: $e');
    }
  }
}