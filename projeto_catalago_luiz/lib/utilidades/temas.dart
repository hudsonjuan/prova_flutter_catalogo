import 'package:flutter/material.dart';

final ThemeData temaPadrao = ThemeData(
  useMaterial3: true,
  colorSchemeSeed: Colors.brown,
  scaffoldBackgroundColor: const Color(0xFFF6F6F6),
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    bodyMedium: TextStyle(fontSize: 16),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF8B7500),
    foregroundColor: Colors.white,
  ),
  cardColor: const Color(0xFFFFF8DC),
);
