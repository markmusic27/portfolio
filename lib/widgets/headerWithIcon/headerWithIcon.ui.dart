import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

enum Emoji {
  openBook,
  keyboard,
  volt,
}

class HeaderWithIcon extends StatelessWidget {
  final String text;
  final Emoji emoji;

  HeaderWithIcon({@required this.text, this.emoji});

  String parseEnum() {
    String temp = "";
    for (int i = 0; i < emoji.toString().length; i++) {
      if (i > 5) {
        temp += emoji.toString()[i];
      }
    }
    return "assets/emojis/$temp.png";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          parseEnum(),
          height: 30,
        ),
        SelectableText(" $text", style: kHeader1),
      ],
    );
  }
}
