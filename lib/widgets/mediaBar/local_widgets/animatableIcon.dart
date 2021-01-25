import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
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
  List<dynamic> possibleState;
  int index;

  void animate() {
    controller = AnimationController(
      lowerBound: kSpacingLowerBound,
      value: possibleState[index].onHover ? kSpacingUpperBound : null,
      upperBound: kSpacingUpperBound,
      duration: Duration(milliseconds: 100),
      vsync: this,
    );

    possibleState[index].onHover ? controller.reverse() : controller.forward();

    controller.addListener(() {
      possibleState[index].changeSpacing(controller.value);
    });
  }

  IconData filter() {
    switch (widget.mediaSource) {
      case MediaSource.email:
        index = 5;
        return Email.mail_alt;
        break;
      case MediaSource.gitHub:
        index = 1;
        return GitHub.github_circled;
        break;
      case MediaSource.instagram:
        index = 3;
        return Instagram.instagram;
        break;
      case MediaSource.linkedIn:
        index = 2;
        return LinkedIn.linkedin;
        break;
      case MediaSource.spotify:
        index = 4;
        return Spotify.spotify;
        break;
      case MediaSource.twitter:
        index = 0;
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
    filter();
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
        launch(link);
      },
      child: Observer(
        builder: (_) {
          possibleState = [
            core.state.twitterHoverStore,
            core.state.gitHubHoverStore,
            core.state.linkedInHoverStore,
            core.state.instagramHoverStore,
            core.state.spotifyHoverStore,
            core.state.emailHoverStore,
          ];
          return MouseRegion(
            onEnter: (_) {
              animate();
              possibleState[index].reverseProp();
            },
            onExit: (_) {
              animate();
              possibleState[index].reverseProp();
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 20,
                bottom: possibleState[index].spacing,
              ),
              child: Icon(
                filter(),
                size: 25,
                color: Color(0xffFFFDFD).withOpacity(0.5),
              ),
            ),
          );
        },
      ),
    );
  }
}
