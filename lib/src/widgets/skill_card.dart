import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillCard extends StatelessWidget {
  final String asset;

  const SkillCard({
    required this.asset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).appBarTheme.backgroundColor;

    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SvgPicture.asset(asset),
    );
  }
}
