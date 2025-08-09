import 'package:flutter/material.dart';
import 'package:xpert_test/core/app/style.dart';
import 'package:xpert_test/core/core.dart';
import 'package:xpert_test/core/extension/padding.dart';
import 'package:xpert_test/feature/account/model/account.dart';
import 'package:xpert_test/feature/account/ui/widget/header_widget.dart';

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
    if (context.isMobile) {
      return Container(
          decoration: decorationBox(),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              children: [
                CustomBadge(text: 'Funded', backgroundColor: Color(0xFF75DFA7)),
                SizedBox(
                  width: 10,
                ),
                CustomBadge(text: getAccountStatus(1), backgroundColor: Color(0xFF80A4FE))
              ],
            ).padOnlyTop16Left16(),
            HeaderWidget(isPro: accountModel.isProAccount ?? false, status: getAccountStatus(accountModel.currentPhase ?? 0), statusColor: statusColor),
            _equityWidget(accountModel.balance ?? 0),
            BalanceWidget(accountModel: accountModel),
            LabeledTextButton(icon: Images.dashboard, onTap: () {}, label: context.l10n.dashboard)
          ]));
    } else {
      return Container(
          decoration: decorationBox(),
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
