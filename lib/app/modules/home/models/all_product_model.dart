class ProductModel {
  final String title;
  final String description;
  final String category;
  final double price;
  final List<String> tags;
  final String thumbnail;

  ProductModel({
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.tags,
    required this.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json["title"],
      description: json["description"],
      category: json["category"],
      price: json["price"],
      tags: List<String>.from(json["tags"] ?? []),
      thumbnail: json["thumbnail"],
    );
  }
}
