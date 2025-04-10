import 'package:flutter/material.dart';
import 'vitrine_obras.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animacaoEscala;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animacaoEscala = Tween<double>(begin: 1.0, end: 1.15).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  void _navegarParaVitrine() async {
    await _controller.forward();
    await _controller.reverse();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const VitrineObras()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5DEB3),
      appBar: AppBar(
        title: const Text('Bem-vindo ao Catálogo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _navegarParaVitrine,
          child: ScaleTransition(
            scale: _animacaoEscala,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.menu_book_rounded,
                  size: 80,
                  color: Color(0xFF8B7500),
                ),
                SizedBox(height: 12),
                Text(
                  'Ver Obras',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF8B7500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
