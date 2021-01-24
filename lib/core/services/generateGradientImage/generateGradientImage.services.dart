import 'dart:math';

import 'package:flutter/material.dart';

class GenerateGradientImage {
  ImageProvider generate() {
    int randInt = Random().nextInt(14);
    return AssetImage("gradients/${randInt == 0 ? 1 : randInt}.png");
  }
}
