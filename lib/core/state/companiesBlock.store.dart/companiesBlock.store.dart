import 'package:mobx/mobx.dart';
import 'package:portfolio/models/company.dart';

part 'companiesBlock.store.g.dart';

class CompaniesBlockStore extends _CompaniesBlockStore
    with _$CompaniesBlockStore {}

abstract class _CompaniesBlockStore with Store {
  @observable
  String title = "";

  @observable
  String context = "";

  @observable
  List<Company> companyList = [];

  @action
  void changeTitle(String v) => title = v;

  @action
  void changeContext(String v) => context = v;

  @action
  void addToCompanyList(Company v) => companyList.add(v);
}
