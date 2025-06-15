import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/detalle.dart';

class Listapersonajes extends StatefulWidget {
  const Listapersonajes({super.key});

  @override
  State<Listapersonajes> createState() => _ListapersonajesState();
}

class _ListapersonajesState extends State<Listapersonajes> {
  double pantalla = 0;

  final titulotext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    pantalla = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text("Arcos", style: titulotext),

          const SizedBox(height: 15),

          Row(
            children: [
              bloquesportada("p1.jpg", "alabasta", "subtitulo"),
              SizedBox(width: pantalla * 0.03),
              bloquesportada("p2.jpg", "litergarden", "subtitulo"),
              SizedBox(width: pantalla * 0.03),
              bloquesportada("p3.jpg", "skypia", "subtitulo"),
            ],
          ),
          const Divider(thickness: 1, color: Color.fromARGB(255, 62, 62, 62)),
          const SizedBox(height: 20),
          bloquersonajes("brook", 0xff023cff, "o1"),
          bloquersonajes("Luffy", 0xFFFF0000, "o2"),
          bloquersonajes("Portgas D. Ace", 0xfff17711, "o3"),
          bloquersonajes("Boa Hancock", 0xffe711f1, "o5"),
          bloquersonajes("Roronoa Zoro", 0xff21E295, "o6"),
        ],
      ),
    );
  }

  Widget bloquersonajes(String nombre, int color, String imagen) {
    return GestureDetector(
      onTap:
          () => {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder:
                    (BuildContext context) => Detalle(
                      color: color,
                      image: "assets/$imagen.png",
                      nombre: nombre,
                    ),
              ),
            ),
          },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(66, 43, 43, 43),
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(1, 5),
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 3,

                        color: Color(color),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Hero(
                    tag: color,
                    child: Image.asset("assets/$imagen.png"),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  nombre,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Column bloquesportada(String image, String titulo, String subtitulo) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: pantalla * 0.31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 15),

        RichText(
          text: TextSpan(
            text: titulo,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            children: [
              TextSpan(
                text: subtitulo,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
