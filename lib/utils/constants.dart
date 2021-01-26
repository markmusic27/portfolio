import 'package:flutter/material.dart';

const kBackgroundScaffoldColor = Colors.black;

const kBackgroundScaffoldGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xff131313),
    Colors.black,
  ],
);

const kProfilePictureUpperBound = 51.0;
const kProfilePictureLowerBound = 50.0;

// TEXT
const kSiteHeader = TextStyle(
  color: Color(0xffD5E1FC),
  fontSize: 50,
  fontFamily: "Inter_SemiBold",
);

const kHeader1 = TextStyle(
  color: Colors.white,
  fontFamily: "Inter_Regular",
  fontSize: 30,
);

const kBody = TextStyle(
  color: Color(0xffD0D0D0),
  fontFamily: "Inter_Regular",
  fontSize: 17,
  height: 1.75,
);

// ICONS
const kSpacingLowerBound = 0.0;
const kSpacingUpperBound = 5.0;
