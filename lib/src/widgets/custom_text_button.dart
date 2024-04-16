import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomTextButton({
    required this.onPressed,
    required this.label,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(foregroundColor: primaryColor),
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
