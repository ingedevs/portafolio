import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../views/about_view.dart';
import '../views/projects_view.dart';
import '../views/skills_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ingedevs', style: style.titleMedium),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              //TODO: implementar cambio de lenguaje
            },
            child: const Text('ES'),
          ),
          IconButton(
            onPressed: () {
              //TODO: implementar cambio de tema
            },
            icon: const Icon(BoxIcons.bx_sun),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1080),
            child: const Column(
              children: [
                AboutView(),
                SkillsView(),
                ProjectsView(),
                SizedBox(height: 100.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
