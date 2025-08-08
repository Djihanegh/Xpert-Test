import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class PhasePill extends StatelessWidget {
  final String text;

  const PhasePill({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      avatar: text == "Master Account" ? Image.asset(Images.unlock) : SvgPicture.asset(Images.chart),
    );
  }
}
