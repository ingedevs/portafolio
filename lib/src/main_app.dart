import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../generated/l10n.dart';
import 'config/theme/app_colors.dart';
import 'config/theme/theme_provider.dart';
import 'page/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      child: const HomePage(),
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Ingedevs',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.selectedThemeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: AppColors.colorSeedLight,
            scaffoldBackgroundColor: AppColors.colorBackgroundLight,
            appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: AppColors.colorCardLight,
              surfaceTintColor: Colors.transparent,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.colorSeedLight,
              ),
            ),
            filledButtonTheme: FilledButtonThemeData(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.colorSeedLight,
                foregroundColor: AppColors.colorBackgroundLight,
              ),
            ),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: AppColors.colorSeedDark,
            scaffoldBackgroundColor: AppColors.colorBackgroundDark,
            appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: AppColors.colorCardDark,
              surfaceTintColor: Colors.transparent,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.colorSeedDark,
              ),
            ),
            filledButtonTheme: FilledButtonThemeData(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.colorSeedDark,
                foregroundColor: AppColors.colorBackgroundDark,
              ),
            ),
          ),
          home: child,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
    );
  }
}
