class Types {
  final String? typeId;
  final String? name;
  final String? desc;
  final String? image;
  final String? category;
  final String? createdAt;
  final String? updatedAt;

  Types({this.typeId,
    this.name,
    this.desc,
    this.image,
    this.category,
    this.createdAt,
    this.updatedAt,}
      );

  factory Types.fromJson(Map<dynamic , dynamic> json) => Types(
      typeId : json["typeId"] as String?,
      name : json["name"] as String?,
      desc : json["desc"] as String?,
      image : json["image"] as String?,
      category : json["category"] as String?,
      createdAt : json["createdAt"] as String?,
      updatedAt : json["updatedAt"] as String?
  );

}