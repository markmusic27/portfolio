import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/headerWithIcon/headerWithIcon.ui.dart';
import 'package:provider/provider.dart';

class MyStory extends StatefulWidget {
  @override
  _MyStoryState createState() => _MyStoryState();
}

class _MyStoryState extends State<MyStory> {
  Core core;

  void loadJSON() async {
    final data =
        await core.services.serializeJSON.readJson("json/content.json");

    core.state.myStoryBlockStore.updateTitle(data["myStory"]["title"]);
    core.state.myStoryBlockStore.updateContent(data["myStory"]["content"]);
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    loadJSON();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 25),
      child: Observer(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithIcon(
              text: core.state.myStoryBlockStore.title,
              emoji: Emoji.openBook,
            ),
            SizedBox(height: 10),
            SelectableText(
              core.state.myStoryBlockStore.content,
              style: kBody,
            ),
          ],
        ),
      ),
    );
  }
}
