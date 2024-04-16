import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../generated/l10n.dart';
import 'config/app_theme.dart';
import 'page/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeDark,
      title: 'Ingedevs',
      home: const HomePage(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
