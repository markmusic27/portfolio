import 'package:flutter/material.dart';
import 'package:portfolio/models/company.dart';
import 'package:portfolio/widgets/companyColumn/local_widgets/companyIndex.ui.dart';

class CompanyColumn extends StatelessWidget {
  final List<Company> companyList;

  CompanyColumn({@required this.companyList});

  List<CompanyIndex> render() {
    List<CompanyIndex> temp = [];

    for (Company company in companyList) {
      temp.add(CompanyIndex(company: company));
    }

    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: render(),
      ),
    );
  }
}
