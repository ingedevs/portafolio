import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/constants.dart';

class SkillCard extends StatelessWidget {
  final String asset;

  const SkillCard({
    required this.asset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: colorCard,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SvgPicture.asset(asset),
    );
  }
}
