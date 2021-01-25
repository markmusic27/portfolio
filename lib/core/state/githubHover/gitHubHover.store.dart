import 'package:mobx/mobx.dart';

part 'gitHubHover.store.g.dart';

class GitHubHoverStore extends _GitHubHoverStore with _$GitHubHoverStore {}

abstract class _GitHubHoverStore with Store {
  @observable
  bool onHover = false;

  @observable
  double spacing = 0;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeSpacing(double e) => spacing = e;
}
