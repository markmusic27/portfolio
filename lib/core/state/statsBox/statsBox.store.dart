import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/models/githubStars.dart';
import 'package:portfolio/widgets/gitHub/gitHub.icon.dart';

part 'statsBox.store.g.dart';

class StatsBoxStore extends _StatsBoxStore with _$StatsBoxStore {}

abstract class _StatsBoxStore with Store {
  @observable
  bool onHover = false;

  @observable
  Color accentColor = kGreyAccentColor;

  @observable
  GitHubStars gitHubStars = GitHubStars(
    name: "fetching",
    description: "fetching",
    language: "fetching",
    url: "fetching",
  );

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeAccentColor(Color c) => accentColor = c;
}
