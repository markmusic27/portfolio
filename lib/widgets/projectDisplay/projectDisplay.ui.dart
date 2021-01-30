import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/card/card.ui.dart';
import 'package:portfolio/widgets/projectDisplay/local_widgets/projectDescription.ui.dart';
import 'package:portfolio/widgets/projectDisplay/local_widgets/projectImage.ui.dart';

class ProjectDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardBox(
      backgroundColor: kGreyAccentColor.withOpacity(0.07),
      borderColor: kGreyAccentColor,
      child: SizedBox(
        height: 350,
        child: Column(
          children: [
            ProjectImage(),
            ProjectDescription(),
          ],
        ),
      ),
    );
  }
}
