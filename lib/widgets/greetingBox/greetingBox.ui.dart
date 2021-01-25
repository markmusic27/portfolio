import 'package:flutter/material.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/widgets/backgroundMultiGradient/backgroundMultiGradient.ui.dart';
import 'package:portfolio/widgets/headerWithSubheader/headerWithSubheader.ui.dart';
import 'package:portfolio/widgets/mediaBar/mediaBar.ui.dart';
import 'package:portfolio/widgets/profilePicture/profilePicture.ui.dart';
import 'package:provider/provider.dart';

class GreetingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Core core = Provider.of<Core>(context, listen: false);
    return Expanded(
      child: Stack(
        children: [
          BackgroundMultiGradient(),
          Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: core.services.generateGradientImage.generate(),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfilePicture(),
                HeaderWithSubheader(),
                MediaBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
