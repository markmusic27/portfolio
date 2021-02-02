import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/models/language.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

enum PossibleLangs {
  dart,
  python,
  cpp,
  go,
  graphql,
  java,
  postgresql,
  typescript,
}

class LanguageBubble extends StatefulWidget {
  final PossibleLangs language;

  LanguageBubble({@required this.language});

  @override
  _LanguageBubbleState createState() => _LanguageBubbleState();
}

class _LanguageBubbleState extends State<LanguageBubble>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Core core;
  Language language;
  Color color = kGreyAccentColor;
  bool isHovering = false;

  void readJSON() async {
    Map<String, dynamic> data =
        await core.services.serializeJSON.readJson("json/languages.json");

    String langName = "";
    for (int i = 0; i < widget.language.toString().length; i++) {
      if (i >= 14) {
        langName += widget.language.toString()[i];
      }
    }

    language = Language.fromJSON(data[langName]);
  }

  void animate() async {
    Color activeColor = core.services.conversion.fromHexToColor(language.color);
    Color inactiveColor = kGreyAccentColor;

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );

    if (isHovering) {
      animation = ColorTween(begin: activeColor, end: inactiveColor)
          .animate(controller);
    } else {
      animation = ColorTween(end: activeColor, begin: inactiveColor)
          .animate(controller);
    }

    controller.forward(from: 0);

    controller.addListener(() {
      setState(() {
        color = animation.value;
      });
    });
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    readJSON();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          launch(language.url);
        },
        child: MouseRegion(
          onEnter: (_) {
            animate();
            setState(() {
              isHovering = !isHovering;
            });
          },
          onExit: (_) {
            animate();
            setState(() {
              isHovering = !isHovering;
            });
          },
          child: Container(
            height: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color.withOpacity(0.1),
              border: Border.all(color: color, width: 2),
            ),
            child: Center(
              child: language != null
                  ? Image.asset(
                      "assets/languages/${language.name}.png",
                    )
                  : Container(),
            ),
          ),
        ),
      ),
    );
  }
}
