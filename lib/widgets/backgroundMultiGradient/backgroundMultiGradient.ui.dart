import 'package:flutter/material.dart';
import 'package:portfolio/widgets/backgroundMultiGradient/local_widgets/gradientBox.ui.dart';

class BackgroundMultiGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GradientBox(color: Color(0xffA000E6).withOpacity(0.3)),
        GradientBox(color: Color(0xffFE0058).withOpacity(0.3)),
      ],
    );
  }
}
