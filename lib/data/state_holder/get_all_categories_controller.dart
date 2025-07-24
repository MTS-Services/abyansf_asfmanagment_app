import 'package:abyansf_asfmanagment_app/data/model/all_category/all_categories_model.dart';
import 'package:abyansf_asfmanagment_app/data/model/network_response.dart';
import 'package:abyansf_asfmanagment_app/data/services/network_caller.dart';
import 'package:abyansf_asfmanagment_app/utils/urls.dart';
import 'package:get/get.dart';

class GetAllCategoriesController extends GetxController{
   bool _getAllCategoriesInProgress=false;
   bool get getAllCategoriesInProgress => _getAllCategoriesInProgress;

   AllCategoriesModel _allCategoriesModel=AllCategoriesModel();
   AllCategoriesModel get allCategoriesModel => _allCategoriesModel;


   Future<bool> getAllCategories()async {
     _getAllCategoriesInProgress=true;
     update();
     final NetworkResponse response = await NetworkCaller().getRequest(Urls.allCategoriesUrl);
     _getAllCategoriesInProgress=false;
     if(response.isSuccess){
       _allCategoriesModel=AllCategoriesModel.fromJson(response.body ?? {});
       update();
       return true;
     }else{
       update();
       return false;
     }

   }

   // @override
   // void onInit() {
   //   super.onInit();
   //   getAllCategories();
   // }

}