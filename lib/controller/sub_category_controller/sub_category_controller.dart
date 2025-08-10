import 'package:get/get.dart';
import '../../api_services/sub_category_api_services/sub_category_api_services.dart';
import '../../models/sub_category_model/subcategory_model.dart';


class SubCategoryController extends GetxController {

  var isLoading = false.obs;
  var subCategories = <SubCategory>[].obs;
  var errorMessage = ''.obs;


  @override
  void onInit() {
    fetchSubCategories();
    super.onInit();
  }

  Future<void> fetchSubCategories() async {
    try {
      isLoading(true);
      errorMessage('');

      print("Fetching subcategories...");
      final response = await SubCategoryApiService.getSubCategories();

      print("Received ${response.data.subCategories.length} subcategories");

      // Clear existing data
      subCategories.clear();

      // Add new data - using spread operator for safety
      subCategories.addAll(response.data.subCategories);

      print("Successfully loaded ${subCategories.length} subcategories");
    } catch (e) {
      print("Error in fetchSubCategories: $e");
      errorMessage(e.toString());
      Get.snackbar(
        'Error',
        'Failed to fetch subcategories',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading(false);
    }
  }
}