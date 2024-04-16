import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

import '../config/theme/theme_provider.dart';
import '../views/about_view.dart';
import '../views/projects_view.dart';
import '../views/skills_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    final themeState = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ingedevs', style: style.titleMedium),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: themeState.toggleThemeMode,
            icon: themeState.isDarkMode
                ? const Icon(BoxIcons.bx_sun)
                : const Icon(BoxIcons.bx_moon),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
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
      ),
    );
  }
}
