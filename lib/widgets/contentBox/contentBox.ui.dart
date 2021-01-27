import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/blog.block.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/certificates.block.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/companies.block.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/learning.block.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/myStory.block.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/programming.block.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/projects.block.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/talksEvents.dart';
import 'package:portfolio/widgets/contentBox/local_widgets/widgets.block.dart';

class ContextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          children: [
            MyStory(),
            Companies(),
            Programming(),
            Projects(),
            TalksEvents(),
            Learning(),
            Blog(),
            Certificates(),
            Widgets(),
            SizedBox(height: 700) //TODO: This is solely for testing REMOVE THIS
          ],
        ),
      ),
    );
  }
}
