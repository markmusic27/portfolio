import 'package:flutter/material.dart';
import 'package:portfolio/widgets/headerWithIcon/headerWithIcon.ui.dart';

class Programming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithIcon(text: "Programming", emoji: Emoji.keyboard),
        ],
      ),
    );
  }
}
