import 'package:flutter/material.dart';
import 'package:portfolio/widgets/programmingBubbleDisplay/local_widgets/languageBubble.ui.dart';

class ProgrammingBubbleDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: LanguageBubble(language: Language.cpp, size: 40),
    );
  }
}
