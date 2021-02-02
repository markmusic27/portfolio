import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/headerWithIcon/headerWithIcon.ui.dart';
import 'package:portfolio/widgets/programmingBubbleDisplay/programmingBubbleDisplay.ui.dart';
import 'package:portfolio/widgets/statsBox/statsBox.ui.dart';
import 'package:provider/provider.dart';

class Programming extends StatefulWidget {
  @override
  _ProgrammingState createState() => _ProgrammingState();
}

class _ProgrammingState extends State<Programming> {
  Core core;

  void readJSON() async {
    final data =
        await core.services.serializeJSON.readJson("assets/json/content.json");

    core.state.programmingBlockStore.changeTitle(data["programming"]["title"]);
    core.state.programmingBlockStore
        .changeContext(data["programming"]["context"]);
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    readJSON();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        padding: EdgeInsets.only(top: 10, bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithIcon(
              text: core.state.programmingBlockStore.title,
              emoji: Emoji.keyboard,
            ),
            SizedBox(height: 10),
            SelectableText(
              core.state.programmingBlockStore.context,
              style: kBody,
            ),
            SizedBox(height: 20),
            ProgrammingBubbleDisplay(),
            SizedBox(height: 20),
            StatsBox()
          ],
        ),
      ),
    );
  }
}
