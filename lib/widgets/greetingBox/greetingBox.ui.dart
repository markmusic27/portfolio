import 'package:flutter/material.dart';
import 'package:portfolio/core/core.dart';
import 'package:provider/provider.dart';

class GreetingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Core core = Provider.of<Core>(context, listen: false);
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: core.services.generateGradientImage.generate(),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
