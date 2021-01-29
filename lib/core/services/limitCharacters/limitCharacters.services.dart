class LimitCharacters {
  String limit({String base, int char}) {
    String temp = "";
    for (int i = 0; i < char; i++) {
      try {
        temp += base[i];
      } catch (_) {}
    }
    return temp;
  }
}
