import 'package:mobx/mobx.dart';

part 'zyndicateCompany.store.g.dart';

class ZyndicateCompanyStore extends _ZyndicateCompanyStore
    with _$ZyndicateCompanyStore {}

abstract class _ZyndicateCompanyStore with Store {
  @observable
  bool onHover = false;

  @observable
  double margin = 2;

  @action
  void reverseProp() => onHover = !onHover;

  @action
  void changeMargin(double v) => margin = v;
}
