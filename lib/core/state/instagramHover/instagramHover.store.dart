import 'package:mobx/mobx.dart';

part 'instagramHover.store.g.dart';

class InstagramHoverStore extends _InstagramHoverStore
    with _$InstagramHoverStore {}

abstract class _InstagramHoverStore with Store {
  @observable
  bool onHover = false;

  @observable
  double spacing = 0;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeSpacing(double e) => spacing = e;
}
