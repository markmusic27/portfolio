import 'package:flutter/material.dart';
import 'package:portfolio/core/core.dart';
import 'package:provider/provider.dart';

enum Language {
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
  final double size;
  final Language language;

  LanguageBubble({@required this.language, @required this.size});

  @override
  _LanguageBubbleState createState() => _LanguageBubbleState();
}

class _LanguageBubbleState extends State<LanguageBubble> {
  Core core;
  Color color;
  bool isHovering;

  void readJSON() async {
    Map<String, dynamic> data =
        await core.services.serializeJSON.readJson("json/languages.json");
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    readJSON();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      width: widget.size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
    );
  }
}
