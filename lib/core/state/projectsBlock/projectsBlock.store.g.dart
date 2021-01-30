// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectsBlock.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProjectsBlockStore on _ProjectsBlockStore, Store {
  final _$titleAtom = Atom(name: '_ProjectsBlockStore.title');

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

  final _$contextAtom = Atom(name: '_ProjectsBlockStore.context');

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

  final _$projectListAtom = Atom(name: '_ProjectsBlockStore.projectList');

  @override
  List<Project> get projectList {
    _$projectListAtom.reportRead();
    return super.projectList;
  }

  @override
  set projectList(List<Project> value) {
    _$projectListAtom.reportWrite(value, super.projectList, () {
      super.projectList = value;
    });
  }

  final _$_ProjectsBlockStoreActionController =
      ActionController(name: '_ProjectsBlockStore');

  @override
  void changeProjectList(List<Project> pL) {
    final _$actionInfo = _$_ProjectsBlockStoreActionController.startAction(
        name: '_ProjectsBlockStore.changeProjectList');
    try {
      return super.changeProjectList(pL);
    } finally {
      _$_ProjectsBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTitle(String v) {
    final _$actionInfo = _$_ProjectsBlockStoreActionController.startAction(
        name: '_ProjectsBlockStore.changeTitle');
    try {
      return super.changeTitle(v);
    } finally {
      _$_ProjectsBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeContext(String v) {
    final _$actionInfo = _$_ProjectsBlockStoreActionController.startAction(
        name: '_ProjectsBlockStore.changeContext');
    try {
      return super.changeContext(v);
    } finally {
      _$_ProjectsBlockStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
context: ${context},
projectList: ${projectList}
    ''';
  }
}
