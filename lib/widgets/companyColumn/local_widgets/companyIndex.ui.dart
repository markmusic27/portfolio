import 'package:flutter/material.dart';
import 'package:portfolio/models/company.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyIndex extends StatelessWidget {
  final Company company;

  CompanyIndex({this.company});
  @override
  Widget build(BuildContext context) {
    print(company.imageAssetPath);
    return GestureDetector(
      onTap: () {
        launch(company.url);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 15,
              child: ClipRRect(
                child: Image.asset(company.imageAssetPath),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Expanded(
              flex: 145,
              child: Container(
                child: Column(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
