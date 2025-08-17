import 'package:abyansf_asfmanagment_app/api_services/specific_category_api_services/specific_category_api_services.dart';
import 'package:get/get.dart';
import '../../../../models/specific_category_model/specific_category_model.dart';
import '../../view/screens/single_services_pages/specific_category_details_screen.dart';


class SpecificCategoryController extends GetxController {


  var isLoading = false.obs;
  var subcategory = Rxn<SubCategory>();
  var specificCategories = <SpecificCategoryWithListings>[].obs;
  var errorMessage = ''.obs;
  var sliderIndex=<RxMap<RxInt, RxInt>>[].obs;

  changeSliderIndex(int specificCategoryId, int listingIndex){
    sliderIndex[specificCategoryId][RxInt(specificCategoryId)]?.value = listingIndex;
    update();
  }



  Future<void> fetchSubcategoryDetails(int subcategoryId) async {
    try {
      isLoading(true);
      errorMessage('');
      print("fetchsubcategoryDetails");
      final response = await SpecificCategoryApiServices.getSubcategoryDetails(subcategoryId);
      subcategory.value = response.data.subCategory;
      specificCategories.assignAll(response.data.specificCategories);
      for (int i = 0; i < specificCategories.length; i++) {
        for(int j = 0; j < specificCategories[i].listings.length; j++){
          sliderIndex.add({
            RxInt(i): RxInt(j)
          }.obs);
        }
      }
      Get.to(()=> SpecificCategoryDetailsScreen());
    } catch (e) {
      errorMessage(e.toString());
      print(e.toString());
      Get.snackbar('Error', 'Failed to fetch subcategory details: $e');
    } finally {
      isLoading(false);
    }
  }

  List<Listing> getListingsForSpecificCategory(int specificCategoryId) {
    final category = specificCategories.firstWhere(
          (cat) => cat.id == specificCategoryId,
      orElse: () => SpecificCategoryWithListings(
        id: -1,
        name: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        listings: [],
      ),
    );
    return category.listings;
  }
}