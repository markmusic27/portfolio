import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/headerWithIcon/headerWithIcon.ui.dart';

class MyStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithIcon(
            text: "My Story",
            emoji: Emoji.openBook,
          ),
          SizedBox(height: 15),
          SelectableText(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed rhoncus massa. Proin sollicitudin malesuada enim in porta. Aliquam ultricies nulla ut libero faucibus, in ultricies arcu tincidunt. In et erat volutpat, aliquet orci ac, pellentesque massa. Proin rhoncus egestas tortor eget finibus. Ut condimentum ullamcorper tristique. Quisque ",
              style: kBody),
        ],
      ),
    );
  }
}
