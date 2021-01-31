import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class CardBox extends StatefulWidget {
  final Color backgroundColor;
  final Color borderColor;
  final Widget child;
  final EdgeInsets margin;
  final BoxShadow shadow;

  CardBox({
    this.shadow,
    this.backgroundColor,
    this.borderColor,
    this.child,
    this.margin,
  });

  @override
  _CardBoxState createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  bool onHover = false;
  Color accentColor = kGreyAccentColor;

  void animate() {
    controller = AnimationController(
      duration: Duration(milliseconds: 100),
      vsync: this,
    );

    if (onHover) {
      animation = ColorTween(begin: kAccentColor, end: kGreyAccentColor)
          .animate(controller);
    } else {
      animation = ColorTween(end: kAccentColor, begin: kGreyAccentColor)
          .animate(controller);
    }

    controller.forward();

    controller.addListener(() {
      setState(() {
        accentColor = animation.value;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        animate();
        setState(() {
          onHover = !onHover;
        });
      },
      onExit: (_) {
        animate();
        setState(() {
          onHover = !onHover;
        });
      },
      child: Container(
        margin: widget.margin,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [widget.shadow ?? BoxShadow()],
          color: accentColor.withOpacity(0.07),
          border: Border.all(
            color: accentColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: widget.child,
      ),
    );
  }
}
