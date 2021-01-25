import 'package:mobx/mobx.dart';

part 'spotifyHover.store.g.dart';

class SpotifyHoverStore extends _SpotifyHoverStore with _$SpotifyHoverStore {}

abstract class _SpotifyHoverStore with Store {
  @observable
  bool onHover = false;

  @observable
  double spacing = 0;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeSpacing(double e) => spacing = e;
}
