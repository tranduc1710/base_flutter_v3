import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
      ),
      brightness: Brightness.light,
    );

ThemeData get darkTheme => ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.black,
      ),
      brightness: Brightness.dark,
    );
