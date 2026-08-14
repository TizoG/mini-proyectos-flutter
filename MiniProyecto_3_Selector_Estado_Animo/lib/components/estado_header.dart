import 'package:flutter/cupertino.dart';

class EstadoHeader extends StatelessWidget {
  const EstadoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "¿Cómo te sientes hoy?",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1C1B1F),
          ),
        ),
        Text(
          "Selecciona la acción que mejor describa tu momento.",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF49454F),
          ),
        )
      ],
    );
  }
}
