import 'package:mobx/mobx.dart';

part 'myStoryBlock.store.g.dart';

class MyStoryBlockStore extends _MyStoryBlockStore with _$MyStoryBlockStore {}

abstract class _MyStoryBlockStore with Store {
  @observable
  String title = "";

  @observable
  String content = "";

  @action
  void updateTitle(String e) => title = e;

  @action
  void updateContent(String e) => content = e;
}
