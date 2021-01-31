import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:portfolio/core/core.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/headerWithIcon/headerWithIcon.ui.dart';
import 'package:portfolio/widgets/projectDisplay/projectDisplay.ui.dart';
import 'package:provider/provider.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  Core core;

  void loadJSON() async {
    final Map<String, dynamic> data =
        await core.services.serializeJSON.readJson('assets/json/content.json');

    core.state.projectsBlockStore.changeTitle(data['projects']['title']);
    core.state.projectsBlockStore.changeContext(data["projects"]["context"]);

    List rawProjects = data['projects']['projectList'];

    for (Map<String, dynamic> project in rawProjects) {
      core.state.projectsBlockStore.addProjectList(Project.fromJSON(project));
    }

    for (Project project in core.state.projectsBlockStore.projectList) {
      core.state.projectsBlockStore.addProject(
        ProjectDisplay(project: project),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    core = Provider.of<Core>(context, listen: false);
    loadJSON();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeaderWithIcon(
              text: core.state.projectsBlockStore.title,
              emoji: Emoji.work,
            ),
            SizedBox(height: 10),
            SelectableText(
              core.state.projectsBlockStore.context,
              style: kBody,
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: core.state.projectsBlockStore.projects,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
