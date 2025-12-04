import 'package:get/get.dart';
import 'package:get_practice/app/modules/home/models/all_product_model.dart';
import 'package:get_practice/app/modules/home/models/product_response_model.dart';
import 'package:get_practice/app/modules/home/repositories/all_product_repo.dart';

class HomeController extends GetxController {
  var productsList = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchProducts() async{
    final response = await AllProductRepository.fetchProducts();
    if(response != null){
      productsList.value = response.products;
    }
  }




}
