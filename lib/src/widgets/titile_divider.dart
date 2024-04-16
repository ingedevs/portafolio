import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class TitleDivider extends StatelessWidget {
  final String title;

  const TitleDivider({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 32.0),
      child: Row(
        children: [
          Icon(
            HeroIcons.arrow_long_down,
            color: primaryColor,
            size: 32.0,
          ),
          const SizedBox(width: 8.0),
          Text(title, style: style.bodyLarge),
        ],
      ),
    );
  }
}
