import 'package:flutter/material.dart';
import 'dart:ui';
import '../models/world_cup.dart';
import 'iconic_moment_screen.dart';

class WorldCupDetailScreen extends StatelessWidget {
  final WorldCup worldCup;

  const WorldCupDetailScreen({super.key, required this.worldCup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          '${worldCup.year} - ${worldCup.hostCountry}',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
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
                    color: Colors.white70,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Campeón: ${worldCup.champion}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Fila para la bandera y el escudo (ahora más grandes)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(worldCup.championFlag, width: 120, height: 120), // Más grande
                      const SizedBox(width: 24),
                      Image.asset(worldCup.championEmblem, width: 120, height: 120), // Más grande
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 10,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Image.asset(worldCup.playersPhoto, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 16),
                  // Fila para la Mascota y el Balón Oficial con tamaño de fondo igualado
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Contenedor para la Mascota
                      Expanded(
                        child: Container(
                          height: 200, // Altura fija para igualar
                          color: Colors.white70,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribución uniforme
                            children: [
                              const Text(
                                'Mascota:',
                                style: TextStyle(fontSize: 18, color: Colors.black),
                              ),
                              Image.asset(worldCup.mascot, height: 100),
                              Text(
                                worldCup.mascotName,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Contenedor para el Balón Oficial
                      Expanded(
                        child: Container(
                          height: 200, // Altura fija para igualar
                          color: Colors.white70,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribución uniforme
                            children: [
                              const Text(
                                'Balón Oficial:',
                                style: TextStyle(fontSize: 18, color: Colors.black),
                              ),
                              Image.asset(worldCup.ballImage, height: 100),
                              Text(
                                worldCup.ballName,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32), // Mayor espacio para el botón
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) =>
                                IconicMomentScreen(iconicMoment: worldCup.iconicMoments[0]),
                            transitionsBuilder:
                                (context, animation, secondaryAnimation, child) {
                              return ScaleTransition(
                                scale: animation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Ver Dato Destacado',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32), // Espacio adicional en la parte inferior
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}