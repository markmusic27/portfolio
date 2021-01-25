import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/email/email.icon.dart';
import 'package:portfolio/widgets/gitHub/gitHub.icon.dart';
import 'package:portfolio/widgets/instagram/instagram.icon.dart';
import 'package:portfolio/widgets/linkedIn/linkedIn.icon.dart';
import 'package:portfolio/widgets/spotify/spotify.icon.dart';
import 'package:portfolio/widgets/twitter/twitter.icon.dart';

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
  IconData filter() {
    switch (widget.mediaSource) {
      case MediaSource.email:
        return Email.mail_alt;
        break;
      case MediaSource.github:
        return GitHub.github_circled;
        break;
      case MediaSource.instagram:
        return Instagram.instagram;
        break;
      case MediaSource.linkedIn:
        return LinkedIn.linkedin;
        break;
      case MediaSource.spotify:
        return Spotify.spotify;
        break;
      case MediaSource.twitter:
        return Twitter.twitter;
        break;
      default:
        return null;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17),
      child: Icon(
        filter(),
        size: 25,
        color: Color(0xffFFFDFD).withOpacity(0.5),
      ),
    );
  }
}
