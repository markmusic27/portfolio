import 'package:mobx/mobx.dart';

part 'safeCompany.store.g.dart';

class SafeCompanyStore extends _SafeCompanyStore with _$SafeCompanyStore {}

abstract class _SafeCompanyStore with Store {
  @observable
  bool onHover = false;

  @observable
  double margin = 2;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeMargin(double v) => margin = v;
}
