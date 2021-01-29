import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:provider/provider.dart';

class LanguageDisplay extends StatefulWidget {
  @override
  _LanguageDisplayState createState() => _LanguageDisplayState();
}

class _LanguageDisplayState extends State<LanguageDisplay> {
  Core core;

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  color: core.state.statsBoxStore.languageColor,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 6),
              Text(
                core.state.statsBoxStore.gitHubStars.language,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Inter_Regular",
                  color: Color(0xff808080),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
