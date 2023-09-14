import 'package:flutter/material.dart';
import 'package:uangkoo/constants/app_theme.dart';
import 'package:uangkoo/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
