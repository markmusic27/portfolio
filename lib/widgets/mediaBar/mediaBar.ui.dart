import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mediaBar/local_widgets/animatableIcon.dart';

class MediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AnimatableIcon(
            mediaSource: MediaSource.twitter,
          ),
          AnimatableIcon(
            mediaSource: MediaSource.gitHub,
          ),
          AnimatableIcon(
            mediaSource: MediaSource.linkedIn,
          ),
          AnimatableIcon(
            mediaSource: MediaSource.instagram,
          ),
          AnimatableIcon(
            mediaSource: MediaSource.spotify,
          ),
          AnimatableIcon(
            mediaSource: MediaSource.email,
          ),
        ],
      ),
    );
  }
}
