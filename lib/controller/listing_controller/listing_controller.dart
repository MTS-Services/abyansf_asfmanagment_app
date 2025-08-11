import 'package:get/get.dart';

import '../../api_services/lishting_api_services/listing_api_services.dart';
import '../../models/listting_details_model/listing_details_model.dart';

class ListingDetailController extends GetxController {

  var indexSubImage=0.obs;
  var isLoading = false.obs;
  var listingData = Rxn<ListingDetailData>();
  var errorMessage = ''.obs;

  Future<void> fetchListingDetails(int listingId) async {
    try {
      isLoading(true);
      errorMessage('');

      final response = await ListingApiServices.getListingDetails(listingId);
      listingData.value = response.data;
    } catch (e) {
      errorMessage(e.toString());
      Get.snackbar('Error', 'Failed to fetch listing details: $e');
    } finally {
      isLoading(false);
    }
  }
}