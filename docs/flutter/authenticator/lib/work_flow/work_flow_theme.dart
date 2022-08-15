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

ThemeData generateTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;
  return ThemeData(
    visualDensity: VisualDensity.standard,
    colorScheme: ColorScheme.fromSwatch(
      brightness: brightness,
      primarySwatch: workFlowColor,
      backgroundColor: isDark ? Colors.grey[850] : Colors.white,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w900,
        color: isDark ? Colors.white : Colors.black87,
      ),
      headline2: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
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
    ),
  );
}
