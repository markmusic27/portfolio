import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/card/card.ui.dart';
import 'package:portfolio/widgets/projectDisplay/local_widgets/projectDescription.ui.dart';
import 'package:portfolio/widgets/projectDisplay/local_widgets/projectImage.ui.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDisplay extends StatefulWidget {
  final Project project;

  ProjectDisplay({@required this.project});

  @override
  _ProjectDisplayState createState() => _ProjectDisplayState();
}

class _ProjectDisplayState extends State<ProjectDisplay> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(widget.project.url);
      },
      child: CardBox(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            ProjectImage(imagePath: widget.project.imageAssetPath),
            ProjectDescription(project: widget.project),
          ],
        ),
      ),
    );
  }
}
