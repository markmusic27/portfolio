// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companiesBlock.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CompaniesBlockStore on _CompaniesBlockStore, Store {
  final _$titleAtom = Atom(name: '_CompaniesBlockStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$contextAtom = Atom(name: '_CompaniesBlockStore.context');

  @override
  String get context {
    _$contextAtom.reportRead();
    return super.context;
  }

  @override
  set context(String value) {
    _$contextAtom.reportWrite(value, super.context, () {
      super.context = value;
    });
  }

  final _$companyListAtom = Atom(name: '_CompaniesBlockStore.companyList');

  @override
  List<Company> get companyList {
    _$companyListAtom.reportRead();
    return super.companyList;
  }

  @override
  set companyList(List<Company> value) {
    _$companyListAtom.reportWrite(value, super.companyList, () {
      super.companyList = value;
    });
  }

  final _$_CompaniesBlockStoreActionController =
      ActionController(name: '_CompaniesBlockStore');

  @override
  void changeTitle(String v) {
    final _$actionInfo = _$_CompaniesBlockStoreActionController.startAction(
        name: '_CompaniesBlockStore.changeTitle');
    try {
      return super.changeTitle(v);
    } finally {
      _$_CompaniesBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeContext(String v) {
    final _$actionInfo = _$_CompaniesBlockStoreActionController.startAction(
        name: '_CompaniesBlockStore.changeContext');
    try {
      return super.changeContext(v);
    } finally {
      _$_CompaniesBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToCompanyList(Company v) {
    final _$actionInfo = _$_CompaniesBlockStoreActionController.startAction(
        name: '_CompaniesBlockStore.addToCompanyList');
    try {
      return super.addToCompanyList(v);
    } finally {
      _$_CompaniesBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
context: ${context},
companyList: ${companyList}
    ''';
  }
}
