import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../generated/l10n.dart';
import '../config/constants.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ResponsiveBreakpoints.of(context).screenWidth;

    if (screenWidth < 900) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ImageLogo(),
          const SizedBox(width: 32.0),
          _TextData(),
          const SizedBox(width: 120.0),
        ],
      );
    }

    return SizedBox(
      height: 650,
      child: Row(
        children: [
          Flexible(
            child: _TextData(),
          ),
          const SizedBox(width: 32.0),
          _ImageLogo(),
        ],
      ),
    );
  }
}

class _ImageLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).appBarTheme.backgroundColor;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400, maxHeight: 400),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: const DecorationImage(
            image: AssetImage('assets/notion_profile_transparent.png'),
            fit: BoxFit.fitWidth,
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _TextData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    final primaryColor = Theme.of(context).primaryColor;

    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint.name;

    TextStyle? textStyleTitle() {
      return switch (breakpoint) {
        MOBILE => style.displaySmall,
        TABLET => style.displayMedium,
        (_) => style.displayLarge,
      };
    }

    TextStyle? textStyleDescription() {
      return switch (breakpoint) {
        MOBILE => style.titleLarge,
        TABLET => style.titleMedium,
        (_) => style.titleSmall,
      };
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(TextSpan(
          text: S.of(context).aboutPart1,
          style: textStyleTitle(),
          children: [
            TextSpan(
              text: 'Axel Roman',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            TextSpan(text: S.of(context).aboutPart2),
          ],
        )),
        const SizedBox(height: 16.0),
        Text(
          S.of(context).aboutDescription,
          style: textStyleDescription(),
        ),
        const SizedBox(height: 16.0),
        if (breakpoint == MOBILE)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _LinkedinButton(),
              const SizedBox(height: 8.0),
              _GithubButton(),
              const SizedBox(height: 16.0),
              _DownloadCVButton(),
            ],
          )
        else
          Row(
            children: [
              _LinkedinButton(),
              _GithubButton(),
              _DownloadCVButton(),
            ],
          ),
      ],
    );
  }
}

class _DownloadCVButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: FilledButton.icon(
        onPressed: () async {
          await launchUrlString(urlDownloadCV);
        },
        icon: const Icon(BoxIcons.bx_file),
        label: Text(S.of(context).buttonDownloadCV),
      ),
    );
  }
}

class _GithubButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        await launchUrlString(urlGithub);
      },
      icon: const Icon(BoxIcons.bxl_github),
      label: const Text('Github'),
    );
  }
}

class _LinkedinButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        await launchUrlString(urlLinkedIn);
      },
      icon: const Icon(BoxIcons.bxl_linkedin),
      label: const Text('Linkedin'),
    );
  }
}
