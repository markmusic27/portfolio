class Project {
  final String title;
  final String description;
  final String imageAssetPath;
  final String url;

  Project({this.description, this.imageAssetPath, this.url, this.title});

  factory Project.fromJSON(Map<String, dynamic> json) {
    return Project(
      title: json['title'],
      description: json['description'],
      imageAssetPath: json['imageAssetPath'],
      url: json['url'],
    );
  }
}
