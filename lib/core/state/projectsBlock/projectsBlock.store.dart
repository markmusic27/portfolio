import 'package:mobx/mobx.dart';

part 'projectsBlock.store.g.dart';

class ProjectsBlockStore extends _ProjectsBlockStore with _$ProjectsBlockStore {
}

abstract class _ProjectsBlockStore with Store {
  @observable
  String title = '';

  @observable
  String context = '';

  @action
  void changeTitle(String v) => title = v;

  @action
  void changeContext(String v) => context = v;
}
