import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  final String imagePath;

  ProjectImage({this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 250,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
