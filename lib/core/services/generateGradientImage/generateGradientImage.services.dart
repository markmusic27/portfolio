import 'dart:math';

import 'package:flutter/material.dart';

class GenerateGradientImage {
  ImageProvider generate() {
    int randInt = Random().nextInt(14);
    return AssetImage(
        "gradients/${10}.png"); // TODO: Change to random versioning
  }
}
