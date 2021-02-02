import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GradientPlayer extends StatelessWidget {
  final VideoPlayerController controller;
  GradientPlayer({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: EdgeInsets.only(right: 5, top: 1),
        child: FittedBox(
          fit: BoxFit.fill,
          child: SizedBox(
            width: controller.value.size?.width ?? 0,
            height: controller.value.size?.height ?? 0,
            child: VideoPlayer(controller) ?? Container(),
          ),
        ),
      ),
    );
  }
}
