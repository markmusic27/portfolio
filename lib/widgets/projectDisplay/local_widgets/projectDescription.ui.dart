import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/link/link.icons.dart';

class ProjectDescription extends StatelessWidget {
  final Project project;

  ProjectDescription({@required this.project});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: kGreyAccentColor, width: 2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(
                  project.logo,
                  height: 35,
                ),
                SizedBox(width: 10),
                Text(project.title, style: kBoxHeader),
                SizedBox(width: 30),
                Icon(
                  Link.icons8_link,
                  color: kDarkGreyAccentColor,
                  size: 18,
                ),
                SizedBox(width: 8),
                Text(
                  project.url,
                  style: TextStyle(
                    color: kDarkGreyAccentColor,
                    fontFamily: "Inter_SemiBold",
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            project.description,
            style: kBoxSubheader.copyWith(
              fontSize: 15,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
