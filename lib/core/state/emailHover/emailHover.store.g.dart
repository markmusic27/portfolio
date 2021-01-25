// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emailHover.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailHoverStore on _EmailHoverStore, Store {
  final _$onHoverAtom = Atom(name: '_EmailHoverStore.onHover');

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

  final _$spacingAtom = Atom(name: '_EmailHoverStore.spacing');

  @override
  double get spacing {
    _$spacingAtom.reportRead();
    return super.spacing;
  }

  @override
  set spacing(double value) {
    _$spacingAtom.reportWrite(value, super.spacing, () {
      super.spacing = value;
    });
  }

  final _$_EmailHoverStoreActionController =
      ActionController(name: '_EmailHoverStore');

  @override
  void reverseProp() {
    final _$actionInfo = _$_EmailHoverStoreActionController.startAction(
        name: '_EmailHoverStore.reverseProp');
    try {
      return super.reverseProp();
    } finally {
      _$_EmailHoverStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSpacing(double e) {
    final _$actionInfo = _$_EmailHoverStoreActionController.startAction(
        name: '_EmailHoverStore.changeSpacing');
    try {
      return super.changeSpacing(e);
    } finally {
      _$_EmailHoverStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onHover: ${onHover},
spacing: ${spacing}
    ''';
  }
}
