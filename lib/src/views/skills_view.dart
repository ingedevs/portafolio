import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../widgets/skill_card.dart';
import '../widgets/titile_divider.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDivider(
          title: S.of(context).skillsTitle,
        ),
        const Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: [
            SkillCard(
              asset: 'assets/icons/ic_flutter.svg',
            ),
            SkillCard(
              asset: 'assets/icons/ic_firebase.svg',
            ),
            SkillCard(
              asset: 'assets/icons/ic_postgresql.svg',
            ),
            SkillCard(
              asset: 'assets/icons/ic_git.svg',
            ),
            SkillCard(
              asset: 'assets/icons/ic_figma.svg',
            ),
          ],
        ),
        const SizedBox(height: 100.0),
      ],
    );
  }
}
