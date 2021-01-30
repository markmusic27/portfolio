import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/utils/constants.dart';

class ProjectDescription extends StatelessWidget {
  final Project project;

  ProjectDescription({@required this.project});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 100,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: kGreyAccentColor, width: 2),
          ),
        ),
      ),
    );
  }
}
