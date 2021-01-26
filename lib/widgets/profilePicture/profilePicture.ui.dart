import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePicture extends StatefulWidget {
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture>
    with TickerProviderStateMixin {
  AnimationController controller;
  Core core;

  Future<void> animate(bool onHover) async {
    controller = AnimationController(
      lowerBound: kProfilePictureLowerBound,
      value: onHover ? kProfilePictureUpperBound : null,
      upperBound: kProfilePictureUpperBound,
      vsync: this,
      duration: Duration(milliseconds: 100),
    );

    onHover ? controller.reverse() : controller.forward();

    controller.addListener(() {
      core.state.profileHoverStore.changeSize(controller.value);
    });
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch("https://twitter.com/MarkMusic2727");
        animate(false);
      },
      child: Observer(
        builder: (_) => MouseRegion(
          onEnter: (_) {
            animate(core.state.profileHoverStore.onHover);
            core.state.profileHoverStore.reverseProp();
          },
          onExit: (_) {
            animate(core.state.profileHoverStore.onHover);
            core.state.profileHoverStore.reverseProp();
          },
          child: Container(
            height: core.state.profileHoverStore.size,
            width: core.state.profileHoverStore.size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(
                  "images/profile.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
