// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statsBox.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StatsBoxStore on _StatsBoxStore, Store {
  final _$onHoverAtom = Atom(name: '_StatsBoxStore.onHover');

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

  final _$accentColorAtom = Atom(name: '_StatsBoxStore.accentColor');

  @override
  Color get accentColor {
    _$accentColorAtom.reportRead();
    return super.accentColor;
  }

  @override
  set accentColor(Color value) {
    _$accentColorAtom.reportWrite(value, super.accentColor, () {
      super.accentColor = value;
    });
  }

  final _$gitHubStarsAtom = Atom(name: '_StatsBoxStore.gitHubStars');

  @override
  GitHubStars get gitHubStars {
    _$gitHubStarsAtom.reportRead();
    return super.gitHubStars;
  }

  @override
  set gitHubStars(GitHubStars value) {
    _$gitHubStarsAtom.reportWrite(value, super.gitHubStars, () {
      super.gitHubStars = value;
    });
  }

  final _$_StatsBoxStoreActionController =
      ActionController(name: '_StatsBoxStore');

  @override
  void reverseProp() {
    final _$actionInfo = _$_StatsBoxStoreActionController.startAction(
        name: '_StatsBoxStore.reverseProp');
    try {
      return super.reverseProp();
    } finally {
      _$_StatsBoxStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeAccentColor(Color c) {
    final _$actionInfo = _$_StatsBoxStoreActionController.startAction(
        name: '_StatsBoxStore.changeAccentColor');
    try {
      return super.changeAccentColor(c);
    } finally {
      _$_StatsBoxStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onHover: ${onHover},
accentColor: ${accentColor},
gitHubStars: ${gitHubStars}
    ''';
  }
}
