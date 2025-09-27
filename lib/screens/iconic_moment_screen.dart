import 'package:flutter/material.dart';
import 'dart:ui';
import '../models/iconic_moment.dart';

class IconicMomentScreen extends StatelessWidget {
  final IconicMoment iconicMoment;

  const IconicMomentScreen({super.key, required this.iconicMoment});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? Colors.white : Colors.black;
    final appBarTheme = Theme.of(context).appBarTheme;

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Dato Destacado',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: appBarTheme.backgroundColor, // Hereda color del tema
        elevation: 0,
        iconTheme: appBarTheme.iconTheme, // Hereda icono del tema
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/backgrounds/background3.jpg',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: kToolbarHeight + 16),
                  Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      iconicMoment.title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: textColor, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: isDark ? Colors.black : Colors.black54,
                          blurRadius: 10,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Image.asset(iconicMoment.imageUrl, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    color: Theme.of(context).cardColor,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      iconicMoment.description,
                      style: TextStyle(fontSize: 18, color: textColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                      // Hereda el estilo del botón global
                      onPressed: () {
                        Navigator.of(context).popUntil((route) => route.isFirst);
                      },
                      child: const Text('Volver a la línea del tiempo'),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}