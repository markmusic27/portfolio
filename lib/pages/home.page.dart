import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/contentBox/contentBox.ui.dart';
import 'package:portfolio/widgets/greetingBox/greetingBox.ui.dart';

class HomePage extends StatefulWidget {
  static String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundScaffoldColor,
      body: Container(
        decoration: BoxDecoration(gradient: kBackgroundScaffoldGradient),
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(40),
        child: Row(
          children: [
            GreetingBox(),
            SizedBox(width: 80),
            ContextBox(),
          ],
        ),
      ),
    );
  }
}
