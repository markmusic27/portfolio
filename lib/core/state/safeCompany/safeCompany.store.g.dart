// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safeCompany.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SafeCompanyStore on _SafeCompanyStore, Store {
  final _$onHoverAtom = Atom(name: '_SafeCompanyStore.onHover');

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

  final _$marginAtom = Atom(name: '_SafeCompanyStore.margin');

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

  final _$_SafeCompanyStoreActionController =
      ActionController(name: '_SafeCompanyStore');

  @override
  void reverseProp() {
    final _$actionInfo = _$_SafeCompanyStoreActionController.startAction(
        name: '_SafeCompanyStore.reverseProp');
    try {
      return super.reverseProp();
    } finally {
      _$_SafeCompanyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeMargin(double v) {
    final _$actionInfo = _$_SafeCompanyStoreActionController.startAction(
        name: '_SafeCompanyStore.changeMargin');
    try {
      return super.changeMargin(v);
    } finally {
      _$_SafeCompanyStoreActionController.endAction(_$actionInfo);
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
