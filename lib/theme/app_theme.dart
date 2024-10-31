// lib/theme/app_theme.dart
// ignore_for_file: prefer_const_constructors

import 'package:anime_app/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class AppThemes {
  // Define your colors
  static const Color bgColor = Color(0xFF181A20);
  static const Color primaryColor = Color(0xFF06C149);
  static const Color secondaryColor = Color(0xFFFFD300);
  static const Color successColor = Color(0xFF4ADE80);
  static const Color errorColor = Color(0xFFF75555);
  static const Color warningColor = Color(0xFFFACC15);
  static const Color infoColor = Color(0xFF246BFD);
  static const Color disabledColor = Color(0xFFD8D8D8);
  static const Color disabledButtonColor = Color(0xFF0E9E42);

  // Default (Dark) Theme
  static final ThemeData defaultTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: bgColor,
    secondaryHeaderColor: secondaryColor,
    disabledColor: disabledColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        disabledForegroundColor: disabledButtonColor.withOpacity(0.38),
        disabledBackgroundColor: disabledButtonColor.withOpacity(0.12),
      ),
    ),
    buttonTheme: ButtonThemeData(
      disabledColor: disabledButtonColor,
    ),
    textTheme: TextTheme(
      displayLarge: AppFonts.heading1(color: Colors.white), // Use Heading 1
      displayMedium: AppFonts.heading2(color: Colors.white), // Use Heading 2
      displaySmall: AppFonts.heading3(color: Colors.white), // Use Heading 3
      headlineMedium: AppFonts.heading4(color: Colors.white), // Use Heading 4
      headlineSmall: AppFonts.heading5(color: Colors.white), // Use Heading 5
      titleLarge: AppFonts.heading6(color: Colors.white), // Use Heading 6
      bodyLarge: AppFonts.bodyXLarge(color: Colors.white), // Use Body XLarge
      bodyMedium: AppFonts.bodyLarge(color: Colors.white), // Use Body Large
      bodySmall: AppFonts.bodyMedium(color: Colors.white), // Use Body Medium
      labelSmall: AppFonts.bodySmall(color: Colors.white), // Use Body Small
    ),
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: bgColor,
      error: errorColor,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onError: Colors.white,
      onSurface: Colors.white,
    ).copyWith(surface: bgColor),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent, // Set AppBar to transparent
      elevation: 0, // No shadow
      titleTextStyle: TextStyle(color: Colors.white), // Adjust title text color
      iconTheme:
          IconThemeData(color: Colors.white), // Adjust icon color if needed
    ),
  );

  // Optional Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    secondaryHeaderColor: secondaryColor,
    disabledColor: disabledColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        disabledForegroundColor: disabledButtonColor.withOpacity(0.38),
        disabledBackgroundColor: disabledButtonColor.withOpacity(0.12),
      ),
    ),
    buttonTheme: ButtonThemeData(
      disabledColor: disabledButtonColor,
    ),
    textTheme: TextTheme(
      displayLarge:
          AppFonts.heading1(color: Colors.black), // Adjust for light theme
      displayMedium: AppFonts.heading2(color: Colors.black),
      displaySmall: AppFonts.heading3(color: Colors.black),
      headlineMedium: AppFonts.heading4(color: Colors.black),
      headlineSmall: AppFonts.heading5(color: Colors.black),
      titleLarge: AppFonts.heading6(color: Colors.black),
      bodyLarge: AppFonts.bodyXLarge(color: Colors.black),
      bodyMedium: AppFonts.bodyLarge(color: Colors.black),
      bodySmall: AppFonts.bodyMedium(color: Colors.black),
      labelSmall: AppFonts.bodySmall(color: Colors.black),
    ),
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Colors.white,
      error: errorColor,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onError: Colors.white,
      onSurface: Colors.black,
    ).copyWith(surface: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor:
          Colors.transparent, // Set AppBar to transparent for light theme
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black), // Adjust title text color for light theme
      iconTheme:
          IconThemeData(color: Colors.black), // Adjust icon color if needed
    ),
  );
}
