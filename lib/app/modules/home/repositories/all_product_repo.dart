import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get_practice/app/modules/home/models/product_response_model.dart';

class AllProductRepository {
  static Future<ProductResponseModel> fetchProducts()  async{
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));

    if(response.statusCode == 200){
      final jsonData = jsonDecode(response.body);
      print("API is working");
      return ProductResponseModel.fromJson(jsonData);
    }else{
      print("not working");
      throw Exception("API is not working");
    }
  }
}
