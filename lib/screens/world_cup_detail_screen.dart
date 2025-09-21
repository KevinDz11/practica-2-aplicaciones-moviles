import 'package:flutter/material.dart';
import 'dart:ui'; // Necesario para el BackdropFilter
import '../models/world_cup.dart';
import 'iconic_moment_screen.dart';

class WorldCupDetailScreen extends StatelessWidget {
  final WorldCup worldCup;

  const WorldCupDetailScreen({super.key, required this.worldCup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${worldCup.year} - ${worldCup.hostCountry}'),
        backgroundColor: Colors.transparent, // Transparente para ver el fondo
        elevation: 0,
      ),
      extendBodyBehindAppBar: true, // El body se extiende detrás del appbar
      body: Stack(
        children: [
          // Fondo con el póster y efecto de desenfoque
          Positioned.fill(
            child: Image.asset(
              worldCup.officialPoster,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: kToolbarHeight + 16), // Espacio para el AppBar
                  Text(
                    'Campeón: ${worldCup.champion}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Image.asset(worldCup.championFlag, width: 80, height: 80),
                  const SizedBox(height: 16),
                  Image.asset(worldCup.playersPhoto, fit: BoxFit.contain),
                  const SizedBox(height: 16),
                  Text(
                    'Mascota: ${worldCup.mascot.split('/').last.split('.').first}',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navegación al momento icónico
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
                      child: const Text('Ver Dato Destacado'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}