// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iconHover.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IconHoverStore on _IconHoverStore, Store {
  final _$countAtom = Atom(name: '_IconHoverStore.count');

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  final _$_IconHoverStoreActionController =
      ActionController(name: '_IconHoverStore');

  @override
  void incrementCount() {
    final _$actionInfo = _$_IconHoverStoreActionController.startAction(
        name: '_IconHoverStore.incrementCount');
    try {
      return super.incrementCount();
    } finally {
      _$_IconHoverStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count}
    ''';
  }
}
