import 'package:flutter/material.dart';
import 'package:xpert_test/core/extension/padding.dart';
import 'package:xpert_test/feature/account/model/account.dart';

import '../../../../core/core.dart';

class ChallengeGridView extends StatelessWidget {
  const ChallengeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GridView.count(
            crossAxisCount: width >= desktopWidthBreakpoint
                ? 3
                : width >= mobileWidthBreakpoint
                    ? 2
                    : 1,
            mainAxisSpacing: 25,
            crossAxisSpacing: 25,
            childAspectRatio: width >= mobileWidthBreakpoint ? width * 0.0012 : width * 0.003,
            children: Account.fakeData.map((e) => ChallengeCard(accountModel: e)).toList())
        .pad16();
  }
}
