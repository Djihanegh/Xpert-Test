import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../ui/widget/responsive.dart';

extension Context on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  AppLocalizations get l10n => AppLocalizations.of(this)!;

  bool get isMobile {
    final maxWidth = MediaQuery.sizeOf(this).width;
    return maxWidth < desktopWidthBreakpoint;
  }
}
