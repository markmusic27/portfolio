import 'package:flutter/material.dart';

class DarkenBlur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      color: Colors.black.withOpacity(0.05),
    );
  }
}
