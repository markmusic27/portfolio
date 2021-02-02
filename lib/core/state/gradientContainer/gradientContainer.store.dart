import 'package:mobx/mobx.dart';

part 'gradientContainer.store.g.dart';

class GradientContainerStore extends _GradientContainerStore
    with _$GradientContainerStore {}

abstract class _GradientContainerStore with Store {
  @observable
  bool isControllerInitialized = false;

  @action
  void reverseProp() => isControllerInitialized = !isControllerInitialized;
}
