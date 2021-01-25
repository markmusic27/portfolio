import 'package:mobx/mobx.dart';
import 'package:portfolio/utils/constants.dart';

part 'profileHover.store.g.dart';

class ProfileHoverStore extends _ProfileHoverStore with _$ProfileHoverStore {}

abstract class _ProfileHoverStore with Store {
  @observable
  bool onHover = false;

  @observable
  double size = kProfilePictureLowerBound;

  @action
  void changeSize(double e) => size = e;

  @action
  void reverseProp() => onHover = !onHover;
}
