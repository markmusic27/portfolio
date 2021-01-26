class Company {
  String title;
  String description;
  String imageAssetPath;
  String url;

  Company({
    this.description,
    this.imageAssetPath,
    this.title,
    this.url,
  });

  factory Company.fromJSON(Map<String, dynamic> json) {
    return Company(
      title: json["title"],
      description: json["description"],
      imageAssetPath: json["imageAssetPath"],
      url: json["url"],
    );
  }
}
