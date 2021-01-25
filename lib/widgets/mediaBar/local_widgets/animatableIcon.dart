import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/widgets/email/email.icon.dart';
import 'package:portfolio/widgets/gitHub/gitHub.icon.dart';
import 'package:portfolio/widgets/instagram/instagram.icon.dart';
import 'package:portfolio/widgets/linkedIn/linkedIn.icon.dart';
import 'package:portfolio/widgets/spotify/spotify.icon.dart';
import 'package:portfolio/widgets/twitter/twitter.icon.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

enum MediaSource {
  gitHub,
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

class _AnimatableIconState extends State<AnimatableIcon>
    with TickerProviderStateMixin {
  AnimationController controller;
  Core core;

  void animate() {}

  IconData filter() {
    switch (widget.mediaSource) {
      case MediaSource.email:
        return Email.mail_alt;
        break;
      case MediaSource.gitHub:
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
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final data = await core.services.serializeJSON.readJson();
        String link = data[
                "${core.services.serializeJSON.parseMediaSourceEnum(widget.mediaSource)}"]
            ["link"];
        print(link);
        launch(link);
      },
      child: Observer(
        builder: (_) => MouseRegion(
          child: Container(
            margin: EdgeInsets.only(
              right: 17,
              bottom: core.state.gitHubHoverStore.spacing,
            ),
            child: Icon(
              filter(),
              size: 25,
              color: Color(0xffFFFDFD).withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
