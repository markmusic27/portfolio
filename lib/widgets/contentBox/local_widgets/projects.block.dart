import 'package:flutter/material.dart';
import 'package:portfolio/widgets/headerWithIcon/headerWithIcon.ui.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeaderWithIcon(
          text: 'Projects',
          emoji: Emoji.work,
        ),
      ],
    ));
  }
}
