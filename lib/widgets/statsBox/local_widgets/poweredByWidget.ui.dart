import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class PowerdByWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      height: 55,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Row(
          children: [
            Text(
              'powered by the ',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff808080),
                fontFamily: 'Inter_Regular',
              ),
            ),
            Text(
              'wakatime api',
              style: TextStyle(
                fontSize: 13,
                color: kAccentColor,
                fontFamily: 'Inter_Regular',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
