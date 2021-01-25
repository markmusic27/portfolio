import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class HeaderWithSubheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi I'm Mark",
            style: kHeader1Style.copyWith(
              color: Color(0xffD5E1FC).withOpacity(0.9),
            ),
          ),
          SizedBox(height: 3),
          Text(
            "Full-Stack Engineer & Entrepreneur",
            style: kHeader1Style.copyWith(
              color: Color(0xffD5E1FC).withOpacity(0.8),
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
