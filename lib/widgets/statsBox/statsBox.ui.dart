import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:provider/provider.dart';

class StatsBox extends StatefulWidget {
  @override
  _StatsBoxState createState() => _StatsBoxState();
}

class _StatsBoxState extends State<StatsBox> with TickerProviderStateMixin {
  Core core;
  AnimationController controller;
  Animation animation;

  void animate() {
    controller = AnimationController(
      duration: Duration(milliseconds: 100),
      vsync: this,
    );

    if (core.state.statsBoxStore.onHover) {
      animation = ColorTween(begin: kAccentColor, end: kGreyAccentColor)
          .animate(controller);
    } else {
      animation = ColorTween(end: kAccentColor, begin: kGreyAccentColor)
          .animate(controller);
    }

    controller.forward();

    controller.addListener(() {
      core.state.statsBoxStore.changeAccentColor(animation.value);
    });
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MouseRegion(
        onEnter: (_) {
          print("here");
          animate();
          core.state.statsBoxStore.reverseProp();
        },
        onExit: (_) {
          animate();
          core.state.statsBoxStore.reverseProp();
        },
        child: Container(
          height: 75,
          width: double.infinity,
          decoration: BoxDecoration(
            color: core.state.statsBoxStore.accentColor.withOpacity(0.07),
            border: Border.all(
              color: core.state.statsBoxStore.accentColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
