import 'dart:math';

import 'package:flutter/material.dart';

class GenerateGradientImage {
  ImageProvider generate() =>
      AssetImage("gradients/${Random().nextInt(13)}.png");
}
