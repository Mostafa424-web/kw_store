class Product {
  final String? typeId;
  final String? name;
  final String? desc;
  final String? image;
  final String? productUrl;
  final double? ratingAverage;
  final int? ratingQuantity;
  final dynamic price;
  final String? createdAt;
  final String? updatedAt;

  Product({
    this.typeId,
    this.name,
    this.desc,
    this.image,
    this.productUrl,
    this.ratingAverage,
    this.ratingQuantity,
    this.price,
    this.createdAt,
    this.updatedAt,
  });

  factory Product.fromJson(Map<dynamic, dynamic> json) => Product(
      typeId: json["typeId"] as String?,
      name: json["name"] as String?,
      desc: json["desc"] as String?,
      image: json["image"] as String?,
      productUrl: json["productUrl"] as String?,
      ratingAverage: json["ratingsAverage"] as double?,
      ratingQuantity: json["ratingsQuantity"],
      price: json["price"],
      createdAt: json["createdAt"] as String?,
      updatedAt: json["updatedAt"] as String?);
}
