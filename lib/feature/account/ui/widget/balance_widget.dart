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
    final balanceText = "\$${accountModel.balance ?? 0}";
    final boughtDate = formatDateMMMdy(accountModel.createdAt!);
    final idText = accountModel.id ?? "";

    if (context.isMobile) {
      return Column(
        children: [
          _InfoRow(
            label: "${context.l10n.balance}: ",
            value: balanceText,
            valueStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
            labelColor: Colors.white60,
          ),
          _InfoRowWithIcon(
            label: "${context.l10n.bought}: ",
            value: boughtDate,
            labelColor: AppColors.white60,
            valueStyle: context.textTheme.bodyMedium?.copyWith(
              color: AppColors.white90,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            iconPath: Images.info,
          ),
          _InfoRowWithIcon(
            label: "${context.l10n.id}: ",
            value: idText,
            labelColor: AppColors.white60,
            valueStyle: context.textTheme.bodyMedium?.copyWith(
              color: AppColors.white90,
              fontWeight: FontWeight.w400,
            ),
            iconPath: Images.info,
          ),
        ],
      ).padOnlyTop16Left16();
    } else {
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          _InfoInline(
            label: "${context.l10n.balance}: ",
            value: balanceText,
            valueStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
            labelColor: Colors.white60,
          ),
          _Separator(),
          _InfoInline(
            label: "${context.l10n.bought} ",
            value: boughtDate,
            valueStyle: context.textTheme.bodyMedium?.copyWith(
              color: AppColors.white90,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w400,
              decorationColor: Colors.white,
            ),
            labelColor: AppColors.white90,
            trailingIcon: Images.info,
          ),
          _Separator(),
          _InfoInline(
            label: "${context.l10n.id}: ",
            value: idText,
            labelColor: AppColors.white60,
            trailingIcon: Images.info,
          ),
        ],
      ).padOnlyLeft16Top5();
    }
  }
}

/// Row for wide layout without icons
class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.label,
    required this.value,
    this.labelColor,
    this.valueStyle,
  });

  final String label;
  final String value;
  final Color? labelColor;
  final TextStyle? valueStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AutoSizeText(
          label,
          style: context.textTheme.bodyMedium?.copyWith(color: labelColor),
          maxFontSize: 17,
        ),
        AutoSizeText(
          value,
          style: valueStyle ?? context.textTheme.bodyMedium,
          maxFontSize: 17,
        ),
      ],
    );
  }
}

/// Row for wide layout with icons
class _InfoRowWithIcon extends StatelessWidget {
  const _InfoRowWithIcon({
    required this.label,
    required this.value,
    this.labelColor,
    this.valueStyle,
    required this.iconPath,
  });

  final String label;
  final String value;
  final Color? labelColor;
  final TextStyle? valueStyle;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AutoSizeText(
          label,
          style: context.textTheme.bodyMedium?.copyWith(color: labelColor),
          maxFontSize: 17,
        ),
        AutoSizeText(
          "$value ",
          style: valueStyle ?? context.textTheme.bodyMedium,
          maxFontSize: 17,
        ),
        SvgPicture.asset(iconPath),
      ],
    );
  }
}

/// Inline layout for narrow mode
class _InfoInline extends StatelessWidget {
  const _InfoInline({
    required this.label,
    required this.value,
    this.labelColor,
    this.valueStyle,
    this.trailingIcon,
  });

  final String label;
  final String value;
  final Color? labelColor;
  final TextStyle? valueStyle;
  final String? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AutoSizeText(
          label,
          style: context.textTheme.bodyMedium?.copyWith(color: labelColor),
          maxFontSize: 17,
        ),
        AutoSizeText(
          value,
          style: valueStyle ?? context.textTheme.bodyMedium,
          maxFontSize: 17,
        ),
        if (trailingIcon != null) SvgPicture.asset(trailingIcon!),
      ],
    );
  }
}

class _Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      " • ",
      style: TextStyle(color: AppColors.point),
      maxFontSize: 17,
    );
  }
}
