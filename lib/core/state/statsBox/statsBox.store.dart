import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:portfolio/utils/constants.dart';

part 'statsBox.store.g.dart';

class StatsBoxStore extends _StatsBoxStore with _$StatsBoxStore {}

abstract class _StatsBoxStore with Store {
  @observable
  bool onHover = false;

  @observable
  Color accentColor = kGreyAccentColor;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeAccentColor(Color c) => accentColor = c;
}
