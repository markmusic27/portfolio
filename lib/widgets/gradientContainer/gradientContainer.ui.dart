import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/widgets/darkenBlur/darkenBlur.ui.dart';
import 'package:portfolio/widgets/gradientPlayer/gradientPlayer.ui.dart';
import 'package:portfolio/widgets/headerWithSubheader/headerWithSubheader.ui.dart';
import 'package:portfolio/widgets/mediaBar/mediaBar.ui.dart';
import 'package:portfolio/widgets/profilePicture/profilePicture.ui.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class GradientContainer extends StatefulWidget {
  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  Core core;
  VideoPlayerController controller;

  Future<void> initPlayer() async {
    controller = VideoPlayerController.asset("assets/banner/banner.mov");
    await controller.initialize();
    await controller.setLooping(true);
    await controller.play();
    core.state.gradientContainerStore.reverseProp();
    core.state.generalStore.terminateLoading();
    print("loaded");
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    initPlayer();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Container(
        width: double.infinity,
        child: Stack(
          children: [
            core.state.gradientContainerStore.isControllerInitialized
                ? GradientPlayer(controller: controller)
                : Container(),
            DarkenBlur(),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfilePicture(),
                  HeaderWithSubheader(),
                  Container(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 25),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: MediaBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
