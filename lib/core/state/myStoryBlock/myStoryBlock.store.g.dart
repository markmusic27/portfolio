// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myStoryBlock.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyStoryBlockStore on _MyStoryBlockStore, Store {
  final _$titleAtom = Atom(name: '_MyStoryBlockStore.title');

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

  final _$contentAtom = Atom(name: '_MyStoryBlockStore.content');

  @override
  String get content {
    _$contentAtom.reportRead();
    return super.content;
  }

  @override
  set content(String value) {
    _$contentAtom.reportWrite(value, super.content, () {
      super.content = value;
    });
  }

  final _$_MyStoryBlockStoreActionController =
      ActionController(name: '_MyStoryBlockStore');

  @override
  void updateTitle(String e) {
    final _$actionInfo = _$_MyStoryBlockStoreActionController.startAction(
        name: '_MyStoryBlockStore.updateTitle');
    try {
      return super.updateTitle(e);
    } finally {
      _$_MyStoryBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateContent(String e) {
    final _$actionInfo = _$_MyStoryBlockStoreActionController.startAction(
        name: '_MyStoryBlockStore.updateContent');
    try {
      return super.updateContent(e);
    } finally {
      _$_MyStoryBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
content: ${content}
    ''';
  }
}
