import 'package:flutter/material.dart';
import 'package:tarea_10/pages/inicio_page.dart';

void main() {
  runApp(const NavicuryApp());
}

class NavicuryApp extends StatelessWidget {
  const NavicuryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "navicury",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const InicioPage(),
    );
  }
}
