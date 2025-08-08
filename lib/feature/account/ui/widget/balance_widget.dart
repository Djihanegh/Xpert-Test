import 'package:flutter/material.dart';
import 'package:xpert_test/core/core.dart';
import 'package:xpert_test/core/extension/padding.dart';
import 'package:xpert_test/feature/account/model/account.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key, required this.accountModel});

  final Account accountModel;

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      AutoSizeText("${context.l10n.balance} : ", style: GoogleFonts.inter(color: Colors.white60), maxFontSize: 17),
      AutoSizeText("\$${accountModel.balance ?? 0}", style: GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w700), maxFontSize: 17),
      AutoSizeText(" • ", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
      AutoSizeText(
        "${context.l10n.bought} ",
        style: GoogleFonts.inter(
          color: Color.fromRGBO(255, 255, 255, 0.9),
        ),
        maxFontSize: 17,
      ),
      AutoSizeText("${formatDateMMMdy(accountModel.createdAt!)} ", style: GoogleFonts.inter(color: Color.fromRGBO(255, 255, 255, 0.9), decoration: TextDecoration.underline, fontWeight: FontWeight.w400, decorationColor: Colors.white), maxFontSize: 17),
      SvgPicture.asset(
        Images.info,
        // Optional: apply color tint
      ),
      AutoSizeText("  •  ", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8))),
      AutoSizeText(
        " ${context.l10n.id}: ${accountModel.id} ",
        style: GoogleFonts.inter(color: Color.fromRGBO(255, 255, 255, 0.6), fontWeight: FontWeight.w400),
        maxFontSize: 17,
      ),
      SvgPicture.asset(
        Images.info,
        // Optional: apply color tint
      )
    ]).padOnlyLeft16Top5();
  }
}
