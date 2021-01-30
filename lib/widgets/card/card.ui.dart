import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final Widget child;

  CardBox({this.backgroundColor, this.borderColor, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
