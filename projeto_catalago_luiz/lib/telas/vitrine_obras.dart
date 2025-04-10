import 'package:flutter/material.dart';
import '../modelos/obra.dart';
import '../core_widgets/livro_cartao.dart';

class VitrineObras extends StatelessWidget {
  const VitrineObras({super.key});

  @override
  Widget build(BuildContext context) {
    final listaDeObras = [
      Obra(nome: 'Código Limpo', escritor: 'Robert C. Martin', paginas: 464),
      Obra(nome: 'O Programador Apaixonado', escritor: 'Chad Fowler', paginas: 214),
      Obra(nome: 'A Jornada do Luiz', escritor: 'Hudson Juan', paginas: 333),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Obras'),
      ),
      body: ListView.builder(
        itemCount: listaDeObras.length,
        itemBuilder: (context, index) {
          return LivroCartao(
            obra: listaDeObras[index],
            aoFavoritar: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Favoritou: ${listaDeObras[index].nome}')),
              );
            },
            aoCompartilhar: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Compartilhou: ${listaDeObras[index].nome}')),
              );
            },
          );
        },
      ),
    );
  }
}