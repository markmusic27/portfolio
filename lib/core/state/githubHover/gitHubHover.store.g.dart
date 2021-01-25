// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gitHubHover.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GitHubHoverStore on _GitHubHoverStore, Store {
  final _$onHoverAtom = Atom(name: '_GitHubHoverStore.onHover');

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

  final _$spacingAtom = Atom(name: '_GitHubHoverStore.spacing');

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

  final _$_GitHubHoverStoreActionController =
      ActionController(name: '_GitHubHoverStore');

  @override
  void reverseProp() {
    final _$actionInfo = _$_GitHubHoverStoreActionController.startAction(
        name: '_GitHubHoverStore.reverseProp');
    try {
      return super.reverseProp();
    } finally {
      _$_GitHubHoverStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSpacing(double e) {
    final _$actionInfo = _$_GitHubHoverStoreActionController.startAction(
        name: '_GitHubHoverStore.changeSpacing');
    try {
      return super.changeSpacing(e);
    } finally {
      _$_GitHubHoverStoreActionController.endAction(_$actionInfo);
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
