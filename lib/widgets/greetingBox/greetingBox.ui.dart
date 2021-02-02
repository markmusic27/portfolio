import 'package:flutter/material.dart';
import 'package:portfolio/widgets/backgroundMultiGradient/backgroundMultiGradient.ui.dart';
import 'package:portfolio/widgets/gradientContainer/gradientContainer.ui.dart';

class GreetingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Stack(
          children: [
            BackgroundMultiGradient(),
            GradientContainer(),
          ],
        ),
      ),
    );
  }
}
