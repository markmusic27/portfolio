import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:portfolio/widgets/mediaBar/local_widgets/animatableIcon.dart';

class SerializeJSON {
  Future<String> _loadFromAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<dynamic> readJson(String path) async {
    String jsonString = await _loadFromAsset(path);
    return jsonDecode(jsonString);
  }

  String parseMediaSourceEnum(MediaSource mediaSource) {
    String source = "";

    for (int i = 0; i < mediaSource.toString().length; i++) {
      if (i > 11) {
        source += mediaSource.toString()[i];
      }
    }

    return source;
  }
}
