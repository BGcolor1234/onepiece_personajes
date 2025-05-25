import 'package:flutter/material.dart';
import 'package:onepiece/src/widgets/header.dart';
import 'package:onepiece/src/widgets/lista.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => homeState();
}

// ignore: camel_case_types
class homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(children: <Widget>[Headerwidget(), Listapersonajes()]),
    );
  }
}
