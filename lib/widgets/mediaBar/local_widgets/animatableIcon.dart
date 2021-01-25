import 'package:flutter/material.dart';
import 'package:portfolio/widgets/gitHub/gitHub.icon.dart';

enum MediaSource {
  github,
  twitter,
  linkedIn,
  instagram,
  spotify,
  email,
}

class AnimatableIcon extends StatefulWidget {
  final MediaSource mediaSource;

  AnimatableIcon({@required this.mediaSource});

  @override
  _AnimatableIconState createState() => _AnimatableIconState();
}

class _AnimatableIconState extends State<AnimatableIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      child: Icon(
        GitHub.github_circled,
      ),
    );
  }
}
