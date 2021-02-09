// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GeneralStore on _GeneralStore, Store {
  final _$isLoadingAtom = Atom(name: '_GeneralStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_GeneralStoreActionController =
      ActionController(name: '_GeneralStore');

  @override
  void terminateLoading() {
    final _$actionInfo = _$_GeneralStoreActionController.startAction(
        name: '_GeneralStore.terminateLoading');
    try {
      return super.terminateLoading();
    } finally {
      _$_GeneralStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
