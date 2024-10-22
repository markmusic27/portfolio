import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/models/githubStars.dart';
import 'package:portfolio/widgets/gitHub/gitHub.icon.dart';

part 'statsBox.store.g.dart';

class StatsBoxStore extends _StatsBoxStore with _$StatsBoxStore {}

abstract class _StatsBoxStore with Store {
  @observable
  Color languageColor = Colors.grey;

  @observable
  GitHubStars gitHubStars = GitHubStars(
    name: "fetching",
    description: "fetching",
    language: "fetching",
    url: "fetching",
  );

  @action
  void changeLanguageColor(Color c) => languageColor = c;

  @action
  void changeGitHubStars(GitHubStars m) => gitHubStars = m;
}
