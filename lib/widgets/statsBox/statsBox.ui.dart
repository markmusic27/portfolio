import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/models/githubStars.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/card/card.ui.dart';
import 'package:portfolio/widgets/statsBox/local_widgets/projectDisplay.ui.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class StatsBox extends StatefulWidget {
  @override
  _StatsBoxState createState() => _StatsBoxState();
}

class _StatsBoxState extends State<StatsBox> with TickerProviderStateMixin {
  Core core;

  void fetchAPI() async {
    Map<String, dynamic> response = await core.services.network.fetch(
      endPoint: "https://api.github.com/users/markmusic2727/starred",
    );

    core.state.statsBoxStore
        .changeGitHubStars(GitHubStars.fromJSON(response["data"][0]));

    await initializeColor();
  }

  Future<void> initializeColor() async {
    final data =
        await core.services.serializeJSON.readJson("assets/json/code.json");

    String rawColor =
        data[core.state.statsBoxStore.gitHubStars.language]["color"];

    core.state.statsBoxStore.changeLanguageColor(
      core.services.conversion.fromHexToColor(rawColor),
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
    return GestureDetector(
      onTap: () {
        launch(core.state.statsBoxStore.gitHubStars.url);
      },
      child: CardBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 105,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Last Starred GitHub Repository:',
                    style: kBoxTeller,
                  ),
                  ProjectDisplay(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
