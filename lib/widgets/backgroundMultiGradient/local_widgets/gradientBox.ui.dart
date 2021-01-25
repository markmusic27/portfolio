import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget {
  final Color color;

  GradientBox({@required this.color});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 70,
            )
          ],
        ),
      ),
    );
  }
}
