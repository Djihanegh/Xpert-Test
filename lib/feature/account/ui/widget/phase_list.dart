import 'package:flutter/material.dart';
import 'package:xpert_test/core/extension/padding.dart';

import '../../../../core/core.dart';

class PhaseList extends StatelessWidget {
  const PhaseList({super.key});

  @override
  Widget build(BuildContext context) {
    const phases = ['Evaluation 1', 'Evaluation 2', 'Master Account'];
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.1),
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(255, 255, 255, 0.05), // Bottom border color
                width: 1.14, // Top border thickness
              ),
              bottom: BorderSide(
                color: Color.fromRGBO(255, 255, 255, 0.05), // Bottom border color
                width: 1.14, // Bottom border thickness
              ),
            )),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(phases.length * 2 - 1, (index) {
              if (index.isOdd) {
                // Divider between phases
                return _DashedLine();
              } else {
                // Phase pill
                final phaseIndex = index ~/ 2;
                return PhasePill(text: phases[phaseIndex]);
              }
            }))).padOnlyTop16();
  }
}

class _DashedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context, constraints) {
        final dashWidth = 4.0;
        final dashSpace = 2.0;
        final dashCount = (constraints.maxWidth / (dashWidth + dashSpace)).floor();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            );
          }),
        );
      },
    ));
  }
}
