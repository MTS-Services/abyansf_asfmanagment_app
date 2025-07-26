import 'package:abyansf_asfmanagment_app/data/model/all_category/all_categories_model.dart';
import 'package:abyansf_asfmanagment_app/data/services/network_caller.dart';
import 'package:abyansf_asfmanagment_app/utils/urls.dart';
import 'package:get/get.dart';

class GetAllCategoriesController extends GetxController {
  bool _getAllCategoriesInProgress = false;
  bool get getAllCategoriesInProgress => _getAllCategoriesInProgress;

  List<MainCategories> _mainCategoriesList = [];
  List<MainCategories> get mainCategoriesList => _mainCategoriesList;

  Future<bool> getAllCategories() async {
    _getAllCategoriesInProgress = true;
    update();

    final response = await NetworkCaller().getMainCategories(Urls.allCategoriesUrl);

    _getAllCategoriesInProgress = false;

    if (response.isNotEmpty) {
      _mainCategoriesList = response; // response is already List<MainCategories>
      update();
      return true;
    } else {
      _mainCategoriesList = [];
      update();
      return false;
    }
  }

// Optionally call it on init:
// @override
// void onInit() {
//   super.onInit();
//   getAllCategories();
// }
}
