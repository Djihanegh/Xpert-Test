import 'package:flutter/material.dart';
import 'package:xpert_test/core/extension/padding.dart';

import '../../../../core/core.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.isPro, required this.status, required this.statusColor});

  final bool isPro;
  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AutoSizeText(
          context.l10n.twoStepChallenge,
          style: context.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500),
          maxFontSize: 18,
        ),
        const SizedBox(width: 6),
        if (isPro) CustomBadge(text: context.l10n.pro, backgroundColor: Colors.indigoAccent),
        const Spacer(),
        CustomBadge(text: status, backgroundColor: statusColor),
      ],
    ).customPad();
  }
}
