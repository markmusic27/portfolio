// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programmingBlock.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProgrammingBlockStore on _ProgrammingBlockStore, Store {
  final _$titleAtom = Atom(name: '_ProgrammingBlockStore.title');

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

  final _$contextAtom = Atom(name: '_ProgrammingBlockStore.context');

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

  final _$hoursCodedAtom = Atom(name: '_ProgrammingBlockStore.hoursCoded');

  @override
  String get hoursCoded {
    _$hoursCodedAtom.reportRead();
    return super.hoursCoded;
  }

  @override
  set hoursCoded(String value) {
    _$hoursCodedAtom.reportWrite(value, super.hoursCoded, () {
      super.hoursCoded = value;
    });
  }

  final _$_ProgrammingBlockStoreActionController =
      ActionController(name: '_ProgrammingBlockStore');

  @override
  void changeTitle(String v) {
    final _$actionInfo = _$_ProgrammingBlockStoreActionController.startAction(
        name: '_ProgrammingBlockStore.changeTitle');
    try {
      return super.changeTitle(v);
    } finally {
      _$_ProgrammingBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeContext(String v) {
    final _$actionInfo = _$_ProgrammingBlockStoreActionController.startAction(
        name: '_ProgrammingBlockStore.changeContext');
    try {
      return super.changeContext(v);
    } finally {
      _$_ProgrammingBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeHoursCoded(String v) {
    final _$actionInfo = _$_ProgrammingBlockStoreActionController.startAction(
        name: '_ProgrammingBlockStore.changeHoursCoded');
    try {
      return super.changeHoursCoded(v);
    } finally {
      _$_ProgrammingBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
context: ${context},
hoursCoded: ${hoursCoded}
    ''';
  }
}
