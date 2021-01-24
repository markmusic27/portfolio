import 'package:mobx/mobx.dart';

part 'iconHover.store.g.dart';

class IconHoverStore extends _IconHoverStore with _$IconHoverStore {}

abstract class _IconHoverStore with Store {
  @observable
  int count = 0;

  @action
  void incrementCount() => count++;
}
