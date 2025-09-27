import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  // --------------------------------------------------------------------------
  // Definición de Temas
  // --------------------------------------------------------------------------
  static const double _fontSize = 24.0;
  static final Color _azulFuerte = Colors.blue[800]!; // Definimos el color azul para reusar

  // Tema 1: CLARO (Predeterminado)
  static final ThemeData lightTheme = ThemeData(
    // *** CAMBIO: Usamos el azul fuerte como PrimaryColor ***
    primaryColor: _azulFuerte,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: _azulFuerte, // Azul del AppBar
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _fontSize,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    cardColor: const Color(0xFFF5F5F5), // Color sólido
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // *** CORRECCIÓN: Botones usan el PrimaryColor Azul ***
        backgroundColor: _azulFuerte,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
    ),
  );

  // Tema 2: OSCURO
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black87,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _fontSize,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    // *** CORRECCIÓN: Gris 850 completamente SÓLIDO para las tarjetas ***
    cardColor: Colors.grey[850]!,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white70,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.black, width: 2),
        ),
      ),
    ),
  );

  // Tema 3: CÉSPED (Sin cambios)
  static final ThemeData grassTheme = ThemeData(
    primaryColor: Colors.green[600],
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.green[50]!,
    appBarTheme: AppBarTheme(
      color: Colors.green[600],
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _fontSize,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    cardColor: const Color(0xFFE8F5E9),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
    ),
  );

  // Tema 4: MUNDIAL (Azul y Oro) (Sin cambios)
  static final ThemeData mundialTheme = ThemeData(
    primaryColor: Colors.blue[900],
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0D47A1),
    appBarTheme: AppBarTheme(
      color: Colors.blue[900],
      titleTextStyle: const TextStyle(
        color: Color(0xFFFFD700),
        fontWeight: FontWeight.bold,
        fontSize: _fontSize,
      ),
      iconTheme: const IconThemeData(color: Color(0xFFFFD700)),
    ),
    cardColor: const Color(0xFF0D47A1),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFD700),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    ),
  );


  // --------------------------------------------------------------------------
  // Lógica de Estado
  // --------------------------------------------------------------------------

  ThemeData _currentTheme = lightTheme;
  ThemeData get currentTheme => _currentTheme;

  void toggleTheme(String name) {
    if (name == 'Oscuro') {
      _currentTheme = darkTheme;
    } else if (name == 'Césped') {
      _currentTheme = grassTheme;
    } else if (name == 'Mundial') {
      _currentTheme = mundialTheme;
    } else {
      _currentTheme = lightTheme;
    }
    notifyListeners();
  }
}