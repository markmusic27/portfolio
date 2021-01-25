import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:portfolio/widgets/mediaBar/local_widgets/animatableIcon.dart';

class SerializeJSON {
  Future<String> _loadFromAsset() async {
    return await rootBundle.loadString("json/mediaData.json");
  }

  Future<dynamic> readJson() async {
    String jsonString = await _loadFromAsset();
    return jsonDecode(jsonString);
  }

  String parseMediaSourceEnum(MediaSource mediaSource) {
    print(mediaSource);
    String source = "";

    for (int i = 0; i < mediaSource.toString().length; i++) {
      if (i > 11) {
        source += mediaSource.toString()[i];
      }
    }

    return source;
  }
}
