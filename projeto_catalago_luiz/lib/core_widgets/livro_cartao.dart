import 'package:flutter/material.dart';
import '../modelos/obra.dart';

class LivroCartao extends StatelessWidget {
  final Obra obra;
  final VoidCallback? aoFavoritar;
  final VoidCallback? aoCompartilhar;

  const LivroCartao({
    super.key,
    required this.obra,
    this.aoFavoritar,
    this.aoCompartilhar,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 5,
      color: Colors.indigo[50],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              obra.nome,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Autor: ${obra.escritor}'),
            Text('Páginas: ${obra.paginas}'),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: aoFavoritar,
                  tooltip: 'Favoritar',
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: aoCompartilhar,
                  tooltip: 'Compartilhar',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
