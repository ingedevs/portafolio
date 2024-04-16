import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../generated/l10n.dart';
import '../config/constants.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return SizedBox(
      height: 650,
      child: Row(
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(TextSpan(
                  text: S.of(context).aboutPart1,
                  style: style.displayLarge,
                  children: [
                    const TextSpan(
                      text: 'Axel Roman',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: colorSeed,
                      ),
                    ),
                    TextSpan(text: S.of(context).aboutPart2),
                  ],
                )),
                const SizedBox(height: 16.0),
                Text(
                  S.of(context).aboutDescription,
                  style: style.titleLarge?.copyWith(color: Colors.white70),
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () async {
                        await launchUrlString(urlLinkedIn);
                      },
                      icon: const Icon(BoxIcons.bxl_linkedin),
                      label: const Text('Linkedin'),
                    ),
                    const SizedBox(width: 8.0),
                    TextButton.icon(
                      onPressed: () async {
                        await launchUrlString(urlGithub);
                      },
                      icon: const Icon(BoxIcons.bxl_github),
                      label: const Text('Github'),
                    ),
                    const SizedBox(width: 16.0),
                    SizedBox(
                      height: 45,
                      child: FilledButton.icon(
                        onPressed: () async {
                          await launchUrlString(urlDownloadCV);
                        },
                        icon: const Icon(BoxIcons.bx_file),
                        label: Text(S.of(context).buttonDownloadCV),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 32.0),
          Container(
            width: 400,
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                image: AssetImage('assets/notion_profile_transparent.png'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
