class Language {
  final String url;
  final String color;
  final String name;

  Language({this.color, this.url, this.name});

  factory Language.fromJSON(Map<String, dynamic> json) {
    return Language(
      color: json["color"],
      url: json["url"],
      name: json["name"],
    );
  }
}
