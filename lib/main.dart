import 'package:flutter/material.dart';
import 'screens/timeline_screen.dart'; // Importa tu pantalla de inicio

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historia de los Mundiales',
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 0, 70, 4),
        ),
      ),
      home: TimelineScreen(), // Cambia la pantalla de inicio
    );
  }
}