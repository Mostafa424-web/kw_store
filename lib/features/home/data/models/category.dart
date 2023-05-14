class Category {
  final String? typeId;
  final String? name;
  final String? desc;
  final String? image;
  final String? createdAt;
  final String? updatedAt;

  Category({
    this.typeId,
    this.name,
    this.desc,
    this.image,
    this.createdAt,
    this.updatedAt,}
      );

  factory Category.fromJson(Map<dynamic , dynamic> json) => Category(
      typeId : json["typeId"] as String?,
      name : json["name"] as String?,
      desc : json["desc"] as String?,
      image : json["image"] as String?,
      createdAt : json["createdAt"] as String?,
      updatedAt : json["updatedAt"] as String?
  );

}