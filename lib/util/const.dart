import 'package:flutter/material.dart';

abstract class Constants {
  static const String appName = 'Foody Bite';

  // Colors for theme
  static const Color lightPrimary = Color(0xfffcfcff);
  static const Color darkPrimary = Colors.black;
  static const Color lightAccent = Color(0xff5563ff);
  static const Color darkAccent = Color(0xff5563ff);
  static const Color lightBG = Color(0xfffcfcff);
  static const Color darkBG = Colors.black;
  static Color ratingBG = Colors.yellow[600]!;

  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      background: lightBG,
      primary: lightPrimary,
      secondary: lightAccent,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: lightAccent,
    ),
    scaffoldBackgroundColor: lightBG,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: darkBG),
      titleTextStyle: TextStyle(
        color: darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: lightPrimary,
      backgroundColor: lightAccent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      background: darkBG,
      primary: darkPrimary,
      secondary: darkAccent,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
    scaffoldBackgroundColor: darkBG,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: lightBG),
      titleTextStyle: TextStyle(
        color: lightBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: darkPrimary,
      backgroundColor: darkAccent,
    ),
  );
}
