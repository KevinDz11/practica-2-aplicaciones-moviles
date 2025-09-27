import 'package:flutter/material.dart';
import 'dart:ui';
import '../models/world_cup.dart';
import 'iconic_moment_screen.dart';

class WorldCupDetailScreen extends StatelessWidget {
  final WorldCup worldCup;

  const WorldCupDetailScreen({super.key, required this.worldCup});

  @override
  Widget build(BuildContext context) {
    // Determina el color del texto de contraste
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? Colors.white : Colors.black;
    final appBarTheme = Theme.of(context).appBarTheme; // Obtiene el tema del AppBar

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          '${worldCup.year} - ${worldCup.hostCountry}',
          style: appBarTheme.titleTextStyle, // Hereda estilo del tema
        ),
        backgroundColor: appBarTheme.backgroundColor, // Hereda color del tema
        elevation: 0,
        iconTheme: appBarTheme.iconTheme, // Hereda icono del tema
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            worldCup.officialPoster,
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
                      'Campeón: ${worldCup.champion}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(worldCup.championFlag, width: 120, height: 120),
                      const SizedBox(width: 24),
                      Image.asset(worldCup.championEmblem, width: 120, height: 120),
                    ],
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
                    child: Image.asset(worldCup.playersPhoto, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          color: Theme.of(context).cardColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Mascota:',
                                style: TextStyle(fontSize: 18, color: textColor),
                              ),
                              Image.asset(worldCup.mascot, height: 100),
                              Text(
                                worldCup.mascotName,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: 200,
                          color: Theme.of(context).cardColor,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Balón Oficial:',
                                style: TextStyle(fontSize: 18, color: textColor),
                              ),
                              Image.asset(worldCup.ballImage, height: 100),
                              Text(
                                worldCup.ballName,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: ElevatedButton(
                      // Hereda el estilo del botón global
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) =>
                                IconicMomentScreen(iconicMoment: worldCup.iconicMoments[0]),
                            transitionsBuilder:
                                (context, animation, secondaryAnimation, child) {
                              return ScaleTransition(scale: animation, child: child);
                            },
                          ),
                        );
                      },
                      child: const Text('Ver Dato Destacado'),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}