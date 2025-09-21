import 'package:flutter/material.dart';
import '../models/world_cup.dart';
import '../models/iconic_moment.dart';
import 'world_cup_detail_screen.dart';

class TimelineScreen extends StatelessWidget {
  final List<WorldCup> worldCups = [
    // Datos del Mundial de 1966
    WorldCup(
      year: 1966,
      hostCountry: 'Inglaterra',
      hostFlag: 'assets/banderas/inglaterra.png',
      champion: 'Inglaterra',
      championFlag: 'assets/banderas/inglaterra.png',
      officialPoster: 'assets/poster/66_inglaterra.jpg',
      mascot: 'assets/mascotas/66_willie.png',
      playersPhoto: 'assets/jugadores/2022_argentina.jpg', //cambiar img
      iconicMoments: [
        IconicMoment(
          title: 'El "Gol Fantasma"',
          description: 'El polémico gol de Geoff Hurst en la final, que sigue siendo objeto de debate.',
          imageUrl: 'assets/momentos/66_golfantasma.jpg',
        ),
      ],
    ),
    // Datos del Mundial de 1970
    WorldCup(
      year: 1970,
      hostCountry: 'México',
      hostFlag: 'assets/banderas/mexico.png',
      champion: 'Brasil',
      championFlag: 'assets/banderas/brasil.png',
      officialPoster: 'assets/poster/70_mexico.jpg',
      mascot: 'assets/mascotas/70_juanito.png',
      playersPhoto: 'assets/jugadores/70_brasil.jpg',
      iconicMoments: [
        IconicMoment(
          title: 'El "Gol del Siglo" de Pelé',
          description: 'El pase sin tocar el balón que Pelé le dio a Carlos Alberto en la final.',
          imageUrl: 'assets/momentos/70_jogobonito.jpg',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historia de los Mundiales', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/background1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: worldCups.length,
          itemBuilder: (context, index) {
            final worldCup = worldCups[index];
            return Card(
              color: Colors.white70,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Image.asset(worldCup.hostFlag, width: 40),
                title: Text('${worldCup.year} - ${worldCup.hostCountry}'),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          WorldCupDetailScreen(worldCup: worldCup),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.ease;
                        final tween = Tween(begin: begin, end: end).chain(
                          CurveTween(curve: curve),
                        );
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}