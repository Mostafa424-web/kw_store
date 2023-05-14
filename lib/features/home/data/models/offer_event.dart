class OfferEvent {
  final String? typeId;
  final String? name;
  final String? desc;
  final String? image;
  final List<dynamic>? products;

  OfferEvent({
    this.typeId,
    this.name,
    this.desc,
    this.image,
    this.products,
  });

  factory OfferEvent.fromJson(Map<dynamic, dynamic> json) => OfferEvent(
        typeId: json["typeId"] as String?,
        name: json["name"] as String?,
        desc: json["desc"] as String?,
        image: json["image"] as String?,
        products: json["products"],
      );
}
