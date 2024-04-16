import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../data/projects.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    final primaryColor = Theme.of(context).primaryColor;

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text.rich(TextSpan(
                text: project.title,
                style: style.displaySmall,
              )),
              const SizedBox(width: 8.0),
              if (project.urlWeb != null)
                IconButton(
                  onPressed: () async {
                    await launchUrlString(project.urlWeb!);
                  },
                  icon: Icon(BoxIcons.bx_link, color: primaryColor),
                ),
              if (project.urlGithub != null)
                IconButton(
                  onPressed: () async {
                    await launchUrlString(project.urlGithub!);
                  },
                  icon: Icon(BoxIcons.bxl_github, color: primaryColor),
                ),
              if (project.urlPlayStore != null)
                IconButton(
                  onPressed: () async {
                    await launchUrlString(project.urlPlayStore!);
                  },
                  icon: Icon(BoxIcons.bxl_play_store, color: primaryColor),
                ),
              if (project.urlAppStore != null)
                IconButton(
                  onPressed: () async {
                    await launchUrlString(project.urlAppStore!);
                  },
                  icon: Icon(BoxIcons.bxl_apple, color: primaryColor),
                ),
            ],
          ),
          Text(
            project.description,
            style: style.titleLarge,
          ),
          const SizedBox(height: 32.0),
          if (project.assets.isNotEmpty)
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 500.0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 32.0),
                itemCount: project.assets.length,
                itemBuilder: (context, index) {
                  return Image.asset(project.assets[index]);
                },
              ),
            ),
        ],
      ),
    );
  }
}
