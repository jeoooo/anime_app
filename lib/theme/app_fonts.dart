// app_fonts.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  // Define the Urbanist font styles for headings
  static TextStyle heading1({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 48,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle heading2({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle heading3({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle heading4({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle heading5({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle heading6({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  // Define the Urbanist font styles for body text
  static TextStyle bodyXLarge({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyLarge({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyMedium({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodySmall({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bodyXSmall({Color color = Colors.black}) {
    return GoogleFonts.urbanist(
      color: color,
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );
  }
}
