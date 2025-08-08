import 'package:flutter/material.dart';
import 'package:xpert_test/core/app/style.dart';
import 'package:xpert_test/core/core.dart';
import 'package:xpert_test/core/extension/padding.dart';
import 'package:xpert_test/feature/account/model/account.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key, required this.accountModel});

  final Account accountModel;

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      AutoSizeText("${context.l10n.balance} : ", style: context.textTheme.bodyMedium?.copyWith(color: Colors.white60), maxFontSize: 17), //GoogleFonts.inter(color: Colors.white60)
      AutoSizeText("\$${accountModel.balance ?? 0}", style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700), maxFontSize: 17),
      AutoSizeText(" • ", style: TextStyle(color: AppColors.point)),
      AutoSizeText(
        "${context.l10n.bought} ",
        style: context.textTheme.bodyMedium?.copyWith(
          color: AppColors.white90,
        ),
        maxFontSize: 17,
      ),
      AutoSizeText("${formatDateMMMdy(accountModel.createdAt!)} ", style: context.textTheme.bodyMedium?.copyWith(color: AppColors.white90, decoration: TextDecoration.underline, fontWeight: FontWeight.w400, decorationColor: Colors.white), maxFontSize: 17),
      SvgPicture.asset(
        Images.info,
        // Optional: apply color tint
      ),
      AutoSizeText("  •  ", style: TextStyle(color: AppColors.point)),
      AutoSizeText(
        " ${context.l10n.id}: ${accountModel.id} ",
        style: context.textTheme.bodyMedium?.copyWith(color: AppColors.white60, fontWeight: FontWeight.w400),
        maxFontSize: 17,
      ),
      SvgPicture.asset(
        Images.info,
        // Optional: apply color tint
      )
    ]).padOnlyLeft16Top5();
  }
}
