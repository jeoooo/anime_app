// ignore_for_file: prefer_const_constructors

import 'package:anime_app/theme/app_theme.dart';
import 'package:anime_app/widgets/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.defaultTheme,
      home: HomeScreen(), // Set HomeScreen as the main entry point
      routes: {
        '/home': (context) => const HomeScreen(),
        // Add more named routes here as needed
      },
    );
  }
}
