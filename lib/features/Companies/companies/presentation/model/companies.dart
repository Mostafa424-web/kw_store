class Company {
  final String name;
  final String image;

  Company(this.name, this.image);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
    };
  }
}
