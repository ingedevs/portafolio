import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../widgets/skill_card.dart';
import '../widgets/titile_divider.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleDivider(
          title: S.of(context).skillsTitle,
        ),
        const Row(
          children: [
            SkillCard(
              asset: 'assets/icons/ic_flutter.svg',
            ),
            SizedBox(width: 16.0),
            SkillCard(
              asset: 'assets/icons/ic_firebase.svg',
            ),
            SizedBox(width: 16.0),
            SkillCard(
              asset: 'assets/icons/ic_postgresql.svg',
            ),
            SizedBox(width: 16.0),
            SkillCard(
              asset: 'assets/icons/ic_git.svg',
            ),
            SizedBox(width: 16.0),
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
