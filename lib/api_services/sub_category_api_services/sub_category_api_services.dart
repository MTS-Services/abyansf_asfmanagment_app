import 'package:abyansf_asfmanagment_app/api_services/api_urls/api_urls.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../models/sub_category_model/subcategory_model.dart';


class SubCategoryApiService {

 static Future<SubCategoryResponse> getSubCategories() async {
    try {
      final response = await http.get(
        Uri.parse('${ApiUrls.baseUrl}/categories/sub'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ApiUrls.token}',
        },

      );
      print("subcategory response ${response.statusCode}");

      if (response.statusCode == 200) {

        return SubCategoryResponse.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load subcategories');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}