import 'package:flutter/material.dart';
import 'package:xpert_test/core/core.dart';

import '../../../../core/app/style.dart';

class CustomBadge extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const CustomBadge({
    super.key,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(1.15),
        decoration: primaryBoxDecoration(context.l10n.pro, backgroundColor),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: secondaryBoxDecoration(text, context.colorScheme.primary),
          child: AutoSizeText(
            text,
            style: customInterTightTextStyle(backgroundColor, text),
            maxFontSize: 14,
          ),
        ));
  }
}
