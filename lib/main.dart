import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/timeline_screen.dart';
import 'theme/theme_model.dart'; // Importa el controlador de temas

void main() {
  runApp(
    ChangeNotifierProvider( // Envuelve toda la app
      create: (context) => ThemeModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Escucha el ThemeModel para obtener el tema actual
    return MaterialApp(
      title: 'Historia de los Mundiales',
      debugShowCheckedModeBanner: false,
      // Aquí el tema se actualiza automáticamente al llamar a toggleTheme
      theme: Provider.of<ThemeModel>(context).currentTheme,
      home: TimelineScreen(),
    );
  }
}