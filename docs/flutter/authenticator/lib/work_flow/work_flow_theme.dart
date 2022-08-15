import 'package:flutter/material.dart';

const workFlowColor = MaterialColor(
  0xFF4c4cdc,
  {
    50: Color(0xFF8678ff),
    100: Color(0xFF8678ff),
    200: Color(0xFF8678ff),
    300: Color(0xFF8678ff),
    400: Color(0xFF4c4cdc),
    500: Color(0xFF4c4cdc),
    600: Color(0xFF4c4cdc),
    700: Color(0xFF0023a9),
    800: Color(0xFF0023a9),
    900: Color(0xFF0023a9),
  },
);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 16,
      ),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
);

final workFlowTheme = ThemeData(
  visualDensity: VisualDensity.standard,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: workFlowColor,
    backgroundColor: Colors.white,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
      letterSpacing: -2.5,
    ),
    headline2: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: -1,
    ),
  ),
  elevatedButtonTheme: elevatedButtonTheme,
);

final workFlowThemeDark = ThemeData(
  visualDensity: VisualDensity.standard,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    primarySwatch: workFlowColor,
    backgroundColor: Colors.black45,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: -2.5,
    ),
    headline2: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: -1,
    ),
  ),
  elevatedButtonTheme: elevatedButtonTheme,
);
