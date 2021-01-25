import 'package:mobx/mobx.dart';

part 'linkedInHover.store.g.dart';

class LinkedInHoverStore extends _LinkedInHoverStore with _$LinkedInHoverStore {
}

abstract class _LinkedInHoverStore with Store {
  @observable
  bool onHover = false;

  @observable
  double spacing = 0;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeSpacing(double e) => spacing = e;
}
