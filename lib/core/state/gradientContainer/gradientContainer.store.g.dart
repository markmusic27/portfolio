// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradientContainer.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GradientContainerStore on _GradientContainerStore, Store {
  final _$isControllerInitializedAtom =
      Atom(name: '_GradientContainerStore.isControllerInitialized');

  @override
  bool get isControllerInitialized {
    _$isControllerInitializedAtom.reportRead();
    return super.isControllerInitialized;
  }

  @override
  set isControllerInitialized(bool value) {
    _$isControllerInitializedAtom
        .reportWrite(value, super.isControllerInitialized, () {
      super.isControllerInitialized = value;
    });
  }

  final _$_GradientContainerStoreActionController =
      ActionController(name: '_GradientContainerStore');

  @override
  void reverseProp() {
    final _$actionInfo = _$_GradientContainerStoreActionController.startAction(
        name: '_GradientContainerStore.reverseProp');
    try {
      return super.reverseProp();
    } finally {
      _$_GradientContainerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isControllerInitialized: ${isControllerInitialized}
    ''';
  }
}
