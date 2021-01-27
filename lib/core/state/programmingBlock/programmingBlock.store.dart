import 'package:mobx/mobx.dart';

part 'programmingBlock.store.g.dart';

class ProgrammingBlockStore extends _ProgrammingBlockStore
    with _$ProgrammingBlockStore {}

abstract class _ProgrammingBlockStore with Store {
  @observable
  String title = "";

  @observable
  String context = "";

  @observable
  String hoursCoded = "";

  @action
  void changeTitle(String v) => title = v;

  @action
  void changeContext(String v) => context = v;

  @action
  void changeHoursCoded(String v) => hoursCoded = v;
}
