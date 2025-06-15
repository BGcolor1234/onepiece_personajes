import 'package:flutter/material.dart';

class Infotitulo extends StatelessWidget {
  const Infotitulo({super.key, required this.titulo, required this.subtitulo});
  final String titulo;
  final String subtitulo;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(subtitulo, style: TextStyle(color: Colors.white70)),
      ],
    );
  }
}
