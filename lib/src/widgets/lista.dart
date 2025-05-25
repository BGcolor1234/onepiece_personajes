import 'package:flutter/material.dart';

class Listapersonajes extends StatefulWidget {
  const Listapersonajes({super.key});
  

  @override
  State<Listapersonajes> createState() => _ListapersonajesState();
}

class _ListapersonajesState extends State<Listapersonajes> {
double pantalla = 0;


  final titulotext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold, color:Colors.white
  );

  @override
  Widget build(BuildContext context) {
    pantalla = MediaQuery.of(context).size.width-50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            "Arcos", style: titulotext,
          ),

         
           const SizedBox(
            height: 15,
          ),
          
          Row(
            children: [
                bloquesportada("p1.jpg", "alabasta","subtitulo"),
                SizedBox(
                  width: pantalla*0.03,
                ),
                bloquesportada("p2.jpg", "litergarden","subtitulo"),
                SizedBox(
                  width: pantalla*0.03,
                ),
                bloquesportada("p3.jpg", "skypia","subtitulo"),
                
            ],
          )
        ],
      ),
    );
  }

  Column bloquesportada(
    String image, String titulo, String subtitulo) {
      return Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset("assets/$image", width:pantalla*0.31,height: 110, fit: BoxFit.cover
            ),
            
          ),

          const SizedBox(
              height: 15,
            ),

            RichText(text: TextSpan(
              text: titulo, style: const TextStyle(
                color: Colors.white70,
                fontSize: 14
              ),
              children : [
                TextSpan(
                  text: subtitulo, 
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w300
                  )
                )
              ]
            ))
        ],
      );
  }
}