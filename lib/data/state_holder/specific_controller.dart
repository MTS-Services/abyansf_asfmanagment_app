
import 'package:abyansf_asfmanagment_app/data/model/all_category/specific_categories_model.dart';
import 'package:abyansf_asfmanagment_app/data/model/network_response.dart';
import 'package:abyansf_asfmanagment_app/data/services/network_caller.dart';
import 'package:abyansf_asfmanagment_app/utils/urls.dart';
import 'package:get/get.dart';

class SpecificController extends GetxController {
  bool _specificInProgress = false;

  bool get specificInProgress => _specificInProgress;
  List<SpecificCategory> specificCategoriesList =[];

  Future <void> getSpecificCategories() async {
    final NetworkResponse response = await NetworkCaller().getRequest(
        Urls.specificCategoriesUrl);
    print(response.body?["data"]["specificCategories"]);
   if(response.isSuccess){
     specificCategoriesList.addAll(response.body?["data"]["specificCategories"]);
   }

  }
}

