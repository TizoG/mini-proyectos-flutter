import 'package:flutter/material.dart';

import '../components/estado_header.dart';
import '../components/estado_hero.dart';

class PageEstado extends StatelessWidget {
  const PageEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi animo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFFBFE)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(

          leading: Icon(Icons.energy_savings_leaf),
          title: Text(
              "Mi animo",
          style: TextStyle(
            color: Color(0xFF1C1B1F),
            fontWeight: FontWeight.w500
          ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              EstadoHeader(),
              EstadoHero(),
            ],
          ),
        ),
      ),
    );


  }
}
