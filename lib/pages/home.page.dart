import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/contentBox/contentBox.ui.dart';
import 'package:portfolio/widgets/greetingBox/greetingBox.ui.dart';
import 'package:portfolio/widgets/loadingOverlay/loadingOverlay.ui.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Core core;

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundScaffoldColor,
      body: Observer(
        builder: (context) => Stack(
          children: [
            Container(
              decoration: BoxDecoration(gradient: kBackgroundScaffoldGradient),
              height: double.infinity,
              width: double.infinity,
              child: Row(
                children: [
                  GreetingBox(),
                  ContextBox(),
                ],
              ),
            ),
            Visibility(
              visible: core.state.generalStore.isLoading,
              child: LoadingOverlay(),
            ),
          ],
        ),
      ),
    );
  }
}
