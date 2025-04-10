import 'package:flutter/material.dart';
import 'telas/tela_inicio.dart';

void main() {
  runApp(const MinhaAplicacao());
}

class MinhaAplicacao extends StatelessWidget {
  const MinhaAplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Obras do Luiz',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFB8860B),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8B7500),
          foregroundColor: Colors.white,
        ),
        cardColor: const Color(0xFFF5DEB3),
        useMaterial3: true,
      ),
      home: const TelaInicio(), // <-- Aqui é a mudança
    );
  }
}
