import 'package:flutter/material.dart';
import 'package:xpert_test/core/core.dart';
import 'package:xpert_test/core/extension/padding.dart';
import 'package:xpert_test/feature/account/model/account.dart';

import 'header_widget.dart';
import 'phase_list.dart';

class ChallengeCard extends StatelessWidget {
  final Account accountModel;

  const ChallengeCard({super.key, required this.accountModel});

  Color get statusColor {
    if (accountModel.currentPhase == 0) return Color(0xFF75DFA7);
    if (accountModel.currentPhase == 3) return Color(0xFF80A4FE); // On challenge
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0xFF11285F),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ],
        ),
        //  padding: const EdgeInsets.all(16),
        child: Column(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, children: [
          HeaderWidget(isPro: accountModel.isProAccount ?? false, status: getAccountStatus(accountModel.currentPhase ?? 0), statusColor: statusColor),
          _equityWidget(accountModel.balance ?? 0),
          BalanceWidget(accountModel: accountModel),
          PhaseList(),
          const Spacer(),
          LabeledTextButton(icon: Images.dashboard, onTap: () {}, label: context.l10n.dashboard)
        ]));
  }
}

Widget _equityWidget(double balance) {
  return AutoSizeText(
    "\$$balance",
    style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w600),
    maxFontSize: 47,
  ).padOnlyLeft16();
}

String getAccountStatus(int currentPhase) {
  switch (currentPhase) {
    case 0:
      return "Funded";
    case 1:
      return "Evaluation 1";
    case 2:
      return "Evaluation 2";
    case 3:
      return "On Challenge";
    default:
      return "Unknown";
  }
}
