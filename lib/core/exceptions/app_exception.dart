import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../logger/logger.dart';

enum AppException {
  // Auth
  wrongPassword,
  invalidEmailAddress,

  // Other
  unknown,

  // items
  failedToLoadItems;

  const AppException();

  factory AppException.createAndLog(String tag, dynamic e, StackTrace s) {
    final appException = AppException._create(e);

    if (appException == unknown) {
      // Log unknown exceptions
      logError('[$tag] unknown error', e, s);
    } else {
      logInfo('[$tag] $appException');
    }

    return appException;
  }

  factory AppException._create(dynamic e) {
    if (e is AppException) {
      return e;
    }

    return unknown;
  }

  String getText(AppLocalizations l10n) => l10n.errorUnknownError;
}
