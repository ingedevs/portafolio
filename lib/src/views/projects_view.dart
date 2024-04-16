import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../data/projects.dart';
import '../widgets/project_card.dart';
import '../widgets/titile_divider.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleDivider(
          title: S.of(context).projectsTitle,
        ),
        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(height: 100.0),
          itemCount: projects.length,
          itemBuilder: (_, i) => ProjectCard(project: projects[i]),
        ),
      ],
    );
  }
}
