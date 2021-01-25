import 'package:mobx/mobx.dart';

part 'emailHover.store.g.dart';

class EmailHoverStore extends _EmailHoverStore with _$EmailHoverStore {}

abstract class _EmailHoverStore with Store {
  @observable
  bool onHover = false;

  @observable
  double spacing = 0;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeSpacing(double e) => spacing = e;
}
