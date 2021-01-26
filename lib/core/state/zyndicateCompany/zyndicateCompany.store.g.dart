// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zyndicateCompany.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ZyndicateCompanyStore on _ZyndicateCompanyStore, Store {
  final _$onHoverAtom = Atom(name: '_ZyndicateCompanyStore.onHover');

  @override
  bool get onHover {
    _$onHoverAtom.reportRead();
    return super.onHover;
  }

  @override
  set onHover(bool value) {
    _$onHoverAtom.reportWrite(value, super.onHover, () {
      super.onHover = value;
    });
  }

  final _$marginAtom = Atom(name: '_ZyndicateCompanyStore.margin');

  @override
  double get margin {
    _$marginAtom.reportRead();
    return super.margin;
  }

  @override
  set margin(double value) {
    _$marginAtom.reportWrite(value, super.margin, () {
      super.margin = value;
    });
  }

  final _$_ZyndicateCompanyStoreActionController =
      ActionController(name: '_ZyndicateCompanyStore');

  @override
  void reverseProp() {
    final _$actionInfo = _$_ZyndicateCompanyStoreActionController.startAction(
        name: '_ZyndicateCompanyStore.reverseProp');
    try {
      return super.reverseProp();
    } finally {
      _$_ZyndicateCompanyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMargin(double v) {
    final _$actionInfo = _$_ZyndicateCompanyStoreActionController.startAction(
        name: '_ZyndicateCompanyStore.changeMargin');
    try {
      return super.changeMargin(v);
    } finally {
      _$_ZyndicateCompanyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onHover: ${onHover},
margin: ${margin}
    ''';
  }
}
