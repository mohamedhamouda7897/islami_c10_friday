import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color primaryDarkColor = Color(0xFF141A2E);
  static Color blackColor = Color(0xFF242424);
  static Color yellowColor = Colors.yellow;
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.light,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: blackColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.transparent,
        onBackground: primaryColor,
        surface: Colors.white,
        onSurface: blackColor),
    textTheme: TextTheme(
      bodyLarge:
          GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
      bodyMedium:
          GoogleFonts.aBeeZee(fontSize: 25, fontWeight: FontWeight.w500),
      bodySmall:
          GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w300),
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(size: 30, color: blackColor),
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, color: blackColor, fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: primaryDarkColor,
        onPrimary: Colors.white,
        secondary: yellowColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.transparent,
        onBackground: primaryDarkColor,
        surface: Colors.white,
        onSurface: Colors.white),
    textTheme: TextTheme(
      bodyLarge:
          GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
      bodyMedium:
          GoogleFonts.aBeeZee(fontSize: 25, fontWeight: FontWeight.w500),
      bodySmall:
          GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w300),
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(size: 30, color: Colors.white),
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
  );
}
