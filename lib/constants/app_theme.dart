import 'package:flutter/material.dart';
import 'package:uangkoo/constants/pallete.dart';

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Palette.bgColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Palette.bgColor,
        elevation: 0,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.primaryColor,
      ));
}
