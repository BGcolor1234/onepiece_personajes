import 'package:flutter/material.dart';
import 'package:onepiece/src/pages/hom_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "main",
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
