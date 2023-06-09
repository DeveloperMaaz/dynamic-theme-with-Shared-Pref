import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ThemePreferences {
  ThemeData get dark;

  ThemeData get light;
}

class ThemePreferencesImpl extends ThemePreferences {
  @override
  ThemeData get dark => ThemeData(
        scaffoldBackgroundColor: DarkColor.darkBackground,
        colorScheme: const ColorScheme(
          primary: DarkColor.textPrimary,
          secondary: DarkColor.textSecondary,
          onPrimary: DarkColor.greyVariant,
          onSecondary: DarkColor.blueColor,
          background: DarkColor.onBackgroundDarkColor,
          brightness: Brightness.dark,
          outline: DarkColor.darkThemeTextColor,
          onBackground: DarkColor.lightGrey,
          error: Colors.red,
          onError: Colors.red,
          onSurface: DarkColor.darkGrey,
          surface: DarkColor.dark,
          surfaceVariant: DarkColor.golden,
        ),
        dialogBackgroundColor: DarkColor.onBackgroundDarkColor,
        dialogTheme: DialogTheme(
          backgroundColor: Colors.grey.shade800,
          titleTextStyle: const TextStyle(
            color: DarkColor.textPrimary,
          ),
          contentTextStyle: const TextStyle(
            color: DarkColor.darkThemeTextColor,
          ),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: DarkColor.darkBackground,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                color: DarkColor.golden,
              ),
            ),
          ),
        ),
        dividerColor: DarkColor.divider,
        primaryTextTheme: GoogleFonts.aBeeZeeTextTheme(),
        scrollbarTheme: ScrollbarThemeData(
          interactive: true,
          thumbVisibility: MaterialStateProperty.all(true),
          radius: const Radius.circular(10.0),
          thumbColor: MaterialStateProperty.all(Colors.grey),
          thickness: MaterialStateProperty.all(5.0),
          minThumbLength: 100,
        ),
      );

  @override
  // TODO: implement light

  ThemeData get light => ThemeData(
        scaffoldBackgroundColor: DarkColor.lightBackground,
        colorScheme: const ColorScheme(
          primary: DarkColor.textPrimary,
          secondary: DarkColor.blueColor,
          onPrimary: DarkColor.greyVariant,
          onSecondary: DarkColor.lightGrey,
          background: DarkColor.onBackgroundLightColor,
          brightness: Brightness.dark,
          outline: DarkColor.lightThemeTextColor,
          onBackground: DarkColor.lightGrey,
          error: Colors.red,
          onError: Colors.red,
          onSurface: DarkColor.darkGrey,
          surface: DarkColor.dark,
          surfaceVariant: DarkColor.golden,
        ),
        dialogBackgroundColor: DarkColor.onBackgroundLightColor,
        dialogTheme: DialogTheme(
          backgroundColor: Colors.grey.shade800,
          titleTextStyle: const TextStyle(
            color: DarkColor.textPrimary,
          ),
          contentTextStyle: const TextStyle(
            color: DarkColor.lightThemeTextColor,
          ),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: DarkColor.lightBackground,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                color: DarkColor.golden,
              ),
            ),
          ),
        ),
        dividerColor: DarkColor.divider,
        primaryTextTheme: GoogleFonts.aBeeZeeTextTheme(),
        scrollbarTheme: ScrollbarThemeData(
          interactive: true,
          thumbVisibility: MaterialStateProperty.all(true),
          radius: const Radius.circular(10.0),
          thumbColor: MaterialStateProperty.all(Colors.grey),
          thickness: MaterialStateProperty.all(5.0),
          minThumbLength: 100,
        ),
      );
}
