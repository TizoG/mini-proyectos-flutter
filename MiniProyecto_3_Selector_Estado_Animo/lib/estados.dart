enum Estados {
  feliz(
    label: "Feliz",
    assetPath: "assets/images/moods/mood_happy.png",
    message: "Disfruta este buen momento y compártelo."
  ),
  tranquilo(
      label: "Tranquilo",
      assetPath: "assets/images/moods/mood_calm.png",
      message: "Aprovecha esta calma para avanzar a tu ritmo."
  ),
  triste(
      label: "Triste",
      assetPath: "assets/images/moods/mood_sad.png",
      message: "No tienes que resolver todo ahora. Cuídate"
  ),
  cansado(
      label: "Cansado",
      assetPath: "assets/images/moods/mood_tired.png",
      message: "Quizás sea un buen momento para bajar el ritmo."
  ),
  estresado(
      label: "Estresado",
      assetPath: "assets/images/moods/mood_stressed.png",
      message: "Respira unos segundos y céntrate en una sola cosa."
  );

  const Estados({
    required this.label,
    required this.assetPath,
    required this.message,
});

  final String label;
  final String assetPath;
  final String message;
}

Estados? selectEstado;

