// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statsBox.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StatsBoxStore on _StatsBoxStore, Store {
  final _$languageColorAtom = Atom(name: '_StatsBoxStore.languageColor');

  @override
  Color get languageColor {
    _$languageColorAtom.reportRead();
    return super.languageColor;
  }

  @override
  set languageColor(Color value) {
    _$languageColorAtom.reportWrite(value, super.languageColor, () {
      super.languageColor = value;
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
  void changeLanguageColor(Color c) {
    final _$actionInfo = _$_StatsBoxStoreActionController.startAction(
        name: '_StatsBoxStore.changeLanguageColor');
    try {
      return super.changeLanguageColor(c);
    } finally {
      _$_StatsBoxStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeGitHubStars(GitHubStars m) {
    final _$actionInfo = _$_StatsBoxStoreActionController.startAction(
        name: '_StatsBoxStore.changeGitHubStars');
    try {
      return super.changeGitHubStars(m);
    } finally {
      _$_StatsBoxStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
languageColor: ${languageColor},
gitHubStars: ${gitHubStars}
    ''';
  }
}
