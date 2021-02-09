import 'package:mobx/mobx.dart';

part 'general.store.g.dart';

class GeneralStore extends _GeneralStore with _$GeneralStore {}

abstract class _GeneralStore with Store {
  @observable
  bool isLoading = true;

  @action
  void terminateLoading() => isLoading = false;
}
