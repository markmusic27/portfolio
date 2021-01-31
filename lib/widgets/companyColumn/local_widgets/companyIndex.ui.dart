import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/models/company.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyIndex extends StatefulWidget {
  final Company company;

  CompanyIndex({this.company});

  @override
  _CompanyIndexState createState() => _CompanyIndexState();
}

class _CompanyIndexState extends State<CompanyIndex>
    with TickerProviderStateMixin {
  Core core;
  int index;
  List<dynamic> state;
  AnimationController controller;

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);

    switch (widget.company.title) {
      case "Safe Labs":
        index = 0;
        break;
      case "Zyndicate Labs":
        index = 1;
        break;
    }
    super.initState();
  }

  void animate() {
    controller = AnimationController(
      lowerBound: kMarginLowerBound,
      value: state[index].onHover ? kMarginUpperBound : null,
      upperBound: kMarginUpperBound,
      duration: Duration(milliseconds: 75),
      vsync: this,
    );

    state[index].onHover ? controller.reverse() : controller.forward();

    controller.addListener(() {
      state[index].changeMargin(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(widget.company.url);
      },
      child: Observer(
        builder: (_) {
          state = [
            core.state.safeCompanyStore,
            core.state.zyndicateCompanyStore,
          ];
          return MouseRegion(
            onEnter: (_) {
              animate();
              state[index].reverseProp();
            },
            onExit: (_) {
              animate();
              state[index].reverseProp();
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 15,
                    child: Padding(
                      padding: EdgeInsets.all(state[index].margin),
                      child: ClipRRect(
                        child: Image.asset(widget.company.imageAssetPath),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 145,
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.company.title,
                            style: TextStyle(
                              fontFamily: "Inter_SemiBold",
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            widget.company.description,
                            style: TextStyle(
                              fontFamily: "Inter_Regular",
                              color: Color(0xffC1C1C1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
