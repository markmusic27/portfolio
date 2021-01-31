class Project {
  final String title;
  final String description;
  final String imageAssetPath;
  final String url;
  final String logo;

  Project({
    this.description,
    this.imageAssetPath,
    this.url,
    this.title,
    this.logo,
  });

  factory Project.fromJSON(Map<String, dynamic> json) {
    return Project(
      title: json['title'],
      description: json['description'],
      logo: json["logo"],
      imageAssetPath: json['imageAssetPath'],
      url: json['url'],
    );
  }
}
