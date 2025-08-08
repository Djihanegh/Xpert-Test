import 'package:flutter/material.dart';
import 'package:xpert_test/core/core.dart';
import 'package:xpert_test/core/extension/padding.dart';

class LabeledTextButton extends StatelessWidget {
  const LabeledTextButton({
    required this.icon,
    required this.onTap,
    required this.label,
    super.key,
  });

  final String label;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: SvgPicture.asset(icon),
      label: Text(label),
    ).pad16();
  }
}
