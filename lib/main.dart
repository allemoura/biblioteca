import 'package:biblioteca/app/pages/main_page.dart';
import 'package:biblioteca/theme/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca',
      theme: CustomThemes.lightTheme,
      home: const MainPage(),
    );
  }
}
