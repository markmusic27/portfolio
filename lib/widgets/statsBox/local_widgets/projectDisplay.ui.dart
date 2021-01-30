import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/statsBox/local_widgets/languageDisplay.ui.dart';
import 'package:provider/provider.dart';

class ProjectDisplay extends StatefulWidget {
  @override
  _ProjectDisplayState createState() => _ProjectDisplayState();
}

class _ProjectDisplayState extends State<ProjectDisplay> {
  Core core;

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  core.state.statsBoxStore.gitHubStars.name,
                  style: kBoxHeader,
                ),
                SizedBox(width: 15),
                LanguageDisplay()
              ],
            ),
            SizedBox(height: 8),
            Text(
              core.services.limitCharacters.limit(
                    base: core.state.statsBoxStore.gitHubStars.description,
                    char: 66,
                  ) +
                  "...",
              style: kBoxSubheader,
            ),
          ],
        ),
      ),
    );
  }
}
