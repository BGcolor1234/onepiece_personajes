import 'package:flutter/material.dart';
import 'package:onepiece/src/animations/fade_animation.dart';
import 'package:onepiece/src/widgets/blur_container.dart';
import 'package:onepiece/src/widgets/infotitulo.dart';

class Detalle extends StatefulWidget {
  const Detalle({
    super.key,
    required this.color,
    required this.image,
    required this.nombre,
  });
  final int color;
  final String image;
  final String nombre;

  @override
  State<Detalle> createState() => _DetalleState();
}

class _DetalleState extends State<Detalle> {
  double alturadepantalla = 0;

  @override
  Widget build(BuildContext context) {
    alturadepantalla = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(widget.color), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: alturadepantalla * 0.6,
                    child: Hero(
                      tag: widget.color,
                      child: Image.asset(widget.image),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: FadeAnimation(
                    intervalEnd: 0.8,
                    child: BlurContainer(
                      child: Container(
                        width: 160,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // ignore: deprecated_member_use
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Text(
                          widget.nombre,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.3,
                child: Text(
                  "${widget.nombre} #personaje",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.3,
                child: Text(
                  "one piece",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Infotitulo(titulo: "echiro oda", subtitulo: "creador"),
                    Infotitulo(titulo: "Japon", subtitulo: "pais"),
                  ],
                ),
              ),
            ),
            Spacer(),
            FadeAnimation(
              intervalStart: 0.5,
              child: GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(widget.color),
                  ),
                  child: Text(
                    "volver",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
