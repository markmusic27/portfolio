import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/statsBox/local_widgets/poweredByWidget.ui.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void fetchAPI() async {
    Map<String, dynamic> response = await core.services.network.fetch(
      endPoint: "https://api.github.com/users/markmusic2727/starred",
    );
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    fetchAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => GestureDetector(
        onTap: () {
          launch("https://wakatime.com/api/v1/users/markmusic2727/stats/");
        },
        child: MouseRegion(
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: core.state.statsBoxStore.accentColor.withOpacity(0.07),
              border: Border.all(
                color: core.state.statsBoxStore.accentColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'In the past 7 days, I have coded:',
                        style: TextStyle(
                          color: Color(0xffD0D0D0),
                          fontFamily: 'Inter_Regular',
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        core.state.programmingBlockStore.hoursCoded,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontFamily: 'Inter_SemiBold',
                        ),
                      ),
                    ],
                  ),
                ),
                PowerdByWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
