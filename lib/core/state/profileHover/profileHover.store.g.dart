// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profileHover.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileHoverStore on _ProfileHoverStore, Store {
  final _$onHoverAtom = Atom(name: '_ProfileHoverStore.onHover');

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

  final _$sizeAtom = Atom(name: '_ProfileHoverStore.size');

  @override
  double get size {
    _$sizeAtom.reportRead();
    return super.size;
  }

  @override
  set size(double value) {
    _$sizeAtom.reportWrite(value, super.size, () {
      super.size = value;
    });
  }

  final _$_ProfileHoverStoreActionController =
      ActionController(name: '_ProfileHoverStore');

  @override
  void changeSize(double e) {
    final _$actionInfo = _$_ProfileHoverStoreActionController.startAction(
        name: '_ProfileHoverStore.changeSize');
    try {
      return super.changeSize(e);
    } finally {
      _$_ProfileHoverStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reverseProp() {
    final _$actionInfo = _$_ProfileHoverStoreActionController.startAction(
        name: '_ProfileHoverStore.reverseProp');
    try {
      return super.reverseProp();
    } finally {
      _$_ProfileHoverStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onHover: ${onHover},
size: ${size}
    ''';
  }
}
