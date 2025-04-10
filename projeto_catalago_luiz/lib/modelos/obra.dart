class Obra {
  final String nome;
  final String escritor;
  final int paginas;

  Obra({
    required this.nome,
    required this.escritor,
    required this.paginas,
  });

  bool get extensa => paginas > 320;

  static Obra exemploPadrao() {
    return Obra(
      nome: 'As Aventuras do Luiz Desenvolvedor',
      escritor: 'Hudson Juan',
      paginas: 389,
    );
  }

  static Obra getExample() => exemploPadrao();

  @override
  String toString() => 'Obra: "$nome" por $escritor, com $paginas páginas';
}
