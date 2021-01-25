import 'package:mobx/mobx.dart';

part 'twitterHover.store.g.dart';

class TwitterHoverStore extends _TwitterHoverStore with _$TwitterHoverStore {}

abstract class _TwitterHoverStore with Store {
  @observable
  bool onHover = false;

  @observable
  double spacing = 0;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeSpacing(double e) => spacing = e;
}
