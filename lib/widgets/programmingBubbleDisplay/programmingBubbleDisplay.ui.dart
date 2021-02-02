import 'package:flutter/material.dart';
import 'package:portfolio/widgets/programmingBubbleDisplay/local_widgets/languageBubble.ui.dart';

class ProgrammingBubbleDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          LanguageBubble(language: PossibleLangs.dart),
          SizedBox(width: 10),
          LanguageBubble(language: PossibleLangs.python),
          SizedBox(width: 10),
          LanguageBubble(language: PossibleLangs.graphql),
          SizedBox(width: 10),
          LanguageBubble(language: PossibleLangs.cpp),
          SizedBox(width: 10),
          LanguageBubble(language: PossibleLangs.go),
          SizedBox(width: 10),
          LanguageBubble(language: PossibleLangs.typescript),
        ],
      ),
    );
  }
}
