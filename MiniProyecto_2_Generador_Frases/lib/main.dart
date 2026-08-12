import 'package:flutter/material.dart';
import 'package:mini_proyecto_2_generador_frases/quote.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int indiceActual = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF7F8FC),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                QuoteAppBar(),
                QuoteHeader(),
                SizedBox(height: 16),
                QuoteCard(indice: indiceActual),
                Expanded(child: SizedBox(height: 16)),
                GenerateQuoteButton(
                  onPressed: () {
                    setState(() {
                      indiceActual = Random().nextInt(quotes.length);
                    });
                  },
                ),
                SizedBox(height: 16),
                Text("Cada clicks es una oportunidad de inspirarte"),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuoteAppBar extends StatelessWidget {
  const QuoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 12),
      child: AppBar(
        backgroundColor: Color(0xFFF7F8FC),
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.format_quote,
          size: 28,
          color: Color(0xFF5B5FEF).withValues(alpha: 0.6),
        ),
        title: Text(
          "Frase del día",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Color(0xFF202338),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}

class QuoteHeader extends StatelessWidget {
  const QuoteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "UN POCO DE INSPIRACIÓN",
            style: TextStyle(
              color: Color(0xFF5B5FEF),
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Encuentra una idea para hoy",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Color(0xFF202338),
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Pulsa el botón y descubre una nueva frase.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFF74788F),
            ),
          ),
        ],
      ),
    );
  }
}

class QuoteCard extends StatefulWidget {
  const QuoteCard({super.key, required this.indice});
  final int indice;

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE7E8F0), width: 1),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF202338).withValues(alpha: 0.05),
            blurRadius: 20,
            spreadRadius: 0,
            offset: Offset(0, 10),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.format_quote_outlined, size: 50, color: Color(0xFF5B5FEF)),
          SizedBox(height: 16),
          Text(
            quotes[widget.indice].frase,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.45,
              color: Color(0xFF202338),
            ),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Container(width: 32, height: 2, color: Color(0xFF5B5FEF)),
              SizedBox(width: 8),
              Text(
                quotes[widget.indice].autor,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF74788F),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GenerateQuoteButton extends StatelessWidget {
  const GenerateQuoteButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style:
          ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.pressed)) {
                return const Color(0xFF4548C8);
              }
              return const Color(0xFF5B5FEF);
            }),
            elevation: WidgetStateProperty.resolveWith<double>((states) {
              if (states.contains(WidgetState.pressed)) {
                return 2;
              }
              return 4;
            }),
          ).merge(
            FilledButton.styleFrom(
              foregroundColor: Colors.white,
              minimumSize: Size(double.infinity, 54),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.32,
              ),
              shadowColor: const Color(0x3D5B5FEF),
            ),
          ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.refresh, size: 20),
          SizedBox(width: 8),
          Text("Generar otra frase"),
        ],
      ),
    );
  }
}
