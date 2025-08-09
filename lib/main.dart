import 'package:flutter/material.dart';
import 'package:xpert_test/core/core.dart';
import 'package:xpert_test/feature/account/ui/page/account_page.dart';

import 'core/app/style.dart';

void main() {
  runApp(const XpertApp());
}

class XpertApp extends StatelessWidget {
  const XpertApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'Flutter Demo',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const AccountPage(),
    );
  }
}
