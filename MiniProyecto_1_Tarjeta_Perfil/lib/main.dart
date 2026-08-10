import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PantallaPrincipal());
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi perfil"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 96,
                  height: 96,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFEEEFFF),
                    child: Text(
                      "AM",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5B5FEF),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 2,
                  bottom: 2,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF4caf88),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  "Alex Morgan",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25,
                  ),
                ),
                SizedBox(height: 13),
                Text(
                  "Diseñador de productos",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5,
                    color: Color(0xFF74788F),
                  ),
                ),
                SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      fontWeight: FontWeight.w400,
                      size: 20,
                      color: Color(0xFF74788F),
                    ),
                    Text(
                      "Madrid, España",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                        height: 1.5,
                        color: Color(0xFF74788F),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Me gusta transformar ideas complejas en experiencias digitales simples y útiles",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF74788F),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 1,
                    horizontal: 18,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "24",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Proyectos",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF74788F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 1,
                    horizontal: 18,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Años aprendiendo",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF74788F),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 1,
                    horizontal: 18,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Tecnologías",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF74788F),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 42),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Habilidades",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 12),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "Flutter",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "Dart",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "UI Desing",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "Figma",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "Git",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "Firebase",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "Desarrollo Web",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xFFEEEFFF),
                  ),
                  child: Text(
                    "Docker",
                    style: TextStyle(fontSize: 13, color: Color(0xFF4548C8)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 52),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FilledButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xFF5B5FEF),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ver Proyectos",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(Icons.arrow_forward_rounded),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
