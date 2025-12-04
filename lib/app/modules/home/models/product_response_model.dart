import 'all_product_model.dart';

class ProductResponseModel {
  final List<ProductModel> products;

  ProductResponseModel({required this.products});

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) {
    return ProductResponseModel(
      products: (json["products"] as List)
          .map((e) => ProductModel.fromJson(e))
          .toList(),
    );
  }
}
