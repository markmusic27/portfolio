import 'package:flutter/material.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/widgets/profilePicture/profilePicture.ui.dart';
import 'package:provider/provider.dart';

class GreetingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Core core = Provider.of<Core>(context, listen: false);
    return Expanded(
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA000E6).withOpacity(0.7),
                        blurRadius: 60,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffFE0058).withOpacity(0.7),
                        blurRadius: 60,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: core.services.generateGradientImage.generate(),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfilePicture(),
                  Container(height: 100, width: 100, color: Colors.blue),
                  Container(height: 100, width: 100, color: Colors.blue),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
