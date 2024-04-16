import 'package:flutter/material.dart';

import 'constants.dart';

final themeDark = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: colorBackground,
  appBarTheme: const AppBarTheme(
    surfaceTintColor: Colors.transparent,
    backgroundColor: colorCard,
    elevation: 0,
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(colorSeed),
      overlayColor: MaterialStateProperty.all(colorSeed.withOpacity(0.1)),
      shadowColor: MaterialStateProperty.all(colorSeed),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(colorSeed),
      surfaceTintColor: MaterialStateProperty.all(colorCard),
      overlayColor: MaterialStateProperty.all(colorSeed.withOpacity(0.1)),
      shadowColor: MaterialStateProperty.all(colorSeed),
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16)),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(colorSeed),
      foregroundColor: MaterialStateProperty.all(Colors.black),
      overlayColor: MaterialStateProperty.all(colorSeed.withOpacity(0.9)),
      shadowColor: MaterialStateProperty.all(colorSeed),
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16)),
    ),
  ),
);
