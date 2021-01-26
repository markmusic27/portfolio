import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/models/company.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/companyColumn/companyColumn.ui.dart';
import 'package:portfolio/widgets/headerWithIcon/headerWithIcon.ui.dart';
import 'package:provider/provider.dart';

class Companies extends StatefulWidget {
  @override
  _CompaniesState createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  Core core;

  void readJSON() async {
    final data =
        await core.services.serializeJSON.readJson("assets/json/content.json");

    core.state.companiesBlockStore.changeTitle(data["companies"]["title"]);
    core.state.companiesBlockStore.changeContext(data["companies"]["context"]);

    for (Map<String, dynamic> json in data["companies"]["companyList"]) {
      core.state.companiesBlockStore.addToCompanyList(
        Company.fromJSON(json),
      );
    }
  }

  @override
  void initState() {
    core = Provider.of<Core>(context, listen: false);
    readJSON();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Observer(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithIcon(
              text: core.state.companiesBlockStore.title,
              emoji: Emoji.volt,
            ),
            SizedBox(height: 10),
            SelectableText(
              core.state.companiesBlockStore.context,
              style: kBody,
            ),
            CompanyColumn(
              companyList: core.state.companiesBlockStore.companyList,
            )
          ],
        ),
      ),
    );
  }
}
