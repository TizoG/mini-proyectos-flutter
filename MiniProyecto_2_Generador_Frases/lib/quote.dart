class Quote {
  final String frase;
  final String autor;

  const Quote({required this.frase, required this.autor});
}

const List<Quote> quotes = [
  Quote(
    frase:
        "Aprende como si fueras a vivir para siempre y vive como si fueras a morir mañana.",
    autor: "Mahatma Gandhi",
  ),
  Quote(
    frase:
        "No tienes que ser grande para empezar, pero tienes que empezar para ser grande.",
    autor: "Zig Ziglar",
  ),
  Quote(
    frase:
        "El único modo de hacer un gran trabajo es amar lo que haces. Si todavía no lo has encontrado, sigue buscando. No te conformes. Como con todos los asuntos del corazón, sabrás cuando lo hayas encontrado.",
    autor: "Steve Jobs",
  ),
];
