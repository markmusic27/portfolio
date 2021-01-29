class GitHubStars {
  String name;
  String description;
  String url;
  String language;

  GitHubStars({this.description, this.language, this.url, this.name});

  factory GitHubStars.fromJSON(Map<String, dynamic> json) {
    return GitHubStars(
      name: json["name"],
      description: json["description"],
      url: json["url"],
      language: json["language"],
    );
  }
}
