import 'package:flutter/material.dart';
import '../models/world_cup.dart';
import '../models/iconic_moment.dart';
import 'world_cup_detail_screen.dart';
import 'dart:ui';

class TimelineScreen extends StatelessWidget {
  final List<WorldCup> worldCups = [
    // Datos del Mundial de 1966
    WorldCup(
      year: 1966,
      hostCountry: 'Inglaterra',
      hostFlag: 'assets/banderas/inglaterra.png',
      champion: 'Inglaterra',
      championFlag: 'assets/banderas/inglaterra.png',
      championEmblem: 'assets/seleccion/inglaterra.png',
      officialPoster: 'assets/poster/66_inglaterra.jpg',
      mascot: 'assets/mascotas/66_willie.png',
      mascotName: 'Willie',
      playersPhoto: 'assets/jugadores/66_inglaterra.jpg', //cambiar img
      ballName: 'Slazenger Challenge',
      ballImage: 'assets/balon/66_slazenger.jpg',
      iconicMoments: [
        IconicMoment(
          title: 'El "Gol Fantasma"',
          description: 'En la final de 1966, Inglaterra se enfrentó a Alemania en un partido de infarto. En tiempo extra, el jugador inglés Geoff Hurst disparó un potente tiro que rebotó en el travesaño. La pelota cayó sobre la línea de meta, pero el árbitro lo marcó como gol, un momento que se convirtió en uno de los más controversiales de la historia de los mundiales y un "gol fantasma" para la eternidad.',
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
      championEmblem: 'assets/seleccion/brasil.png',
      officialPoster: 'assets/poster/70_mexico.jpg',
      mascot: 'assets/mascotas/70_juanito.png',
      mascotName: 'Juanito',
      playersPhoto: 'assets/jugadores/70_brasil.jpg',
      ballName: 'Telstar',
      ballImage: 'assets/balon/70_telstar.jpg',
      iconicMoments: [
        IconicMoment(
          title: 'El adiós del rey',
          description: 'México fue testigo de la consagración de Pelé como leyenda. En su tercer y último mundial, el astro brasileño no solo deslumbró con su magia, sino que también lideró a su equipo a la victoria. En la final contra Italia, Pelé coronó su carrera mundialista con un gol y una actuación brillante, consolidando a Brasil como el "joga bonito" por excelencia.',
          imageUrl: 'assets/momentos/70_jogobonito.jpg',
        ),
      ],
    ),

    // Datos del Mundial de 1974
    WorldCup(
      year: 1974,
      hostCountry: 'Alemania',
      hostFlag: 'assets/banderas/alemania.png', //TODAS PNG
      champion: 'Alemania',
      championFlag: 'assets/banderas/alemania.png', //TODAS PNG
      championEmblem: 'assets/seleccion/alemania.png', //TODAS PNG
      officialPoster: 'assets/poster/74_alemania.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/74_tiptap.png', //TODAS PNG
      mascotName: 'Tip y Tap',
      playersPhoto: 'assets/jugadores/74_alemania.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Durlast',
      ballImage: 'assets/balon/74_durlast.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'La jugada de la fantasía',
          description: 'Johan Cruyff, el líder de la "Naranja Mecánica", revolucionó el fútbol con su técnica y visión de juego. En este mundial, Cruyff regaló al mundo el "Cruyff Turn", una jugada magistral que consistía en un amague que dejaba al rival fuera de combate. Este movimiento se convirtió en un símbolo de su genio y de la innovación del fútbol total holandés.',
          imageUrl: 'assets/momentos/74_cruyffturn.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 1978
    WorldCup(
      year: 1978,
      hostCountry: 'Argentina',
      hostFlag: 'assets/banderas/argentina.png', //TODAS PNG
      champion: 'Argentina',
      championFlag: 'assets/banderas/argentina.png', //TODAS PNG
      championEmblem: 'assets/seleccion/argentina.png', //TODAS PNG
      officialPoster: 'assets/poster/78_argentina.webp', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/78_gauchito.png', //TODAS PNG
      mascotName: 'Gauchito',
      playersPhoto: 'assets/jugadores/78_argentina.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Tango',
      ballImage: 'assets/balon/78_tango.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'La maldición de la naranja',
          description: 'La "Naranja Mecánica" de Holanda, un equipo que maravilló con su fútbol de ataque y su estilo único, llegó a la final por segunda vez consecutiva. Sin embargo, se encontró con el anfitrión, Argentina. Pese a su juego espectacular, la historia se repitió y Holanda volvió a perder la final, sellando una racha de derrotas en el partido más importante, una maldición que los persiguió por muchos años.',
          imageUrl: 'assets/momentos/78_naranjamecanica.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 1982
    WorldCup(
      year: 1982,
      hostCountry: 'España',
      hostFlag: 'assets/banderas/españa.png', //TODAS PNG
      champion: 'Italia',
      championFlag: 'assets/banderas/italia.png', //TODAS PNG
      championEmblem: 'assets/seleccion/italia.png', //TODAS PNG
      officialPoster: 'assets/poster/82_españa.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/82_naranjito.png', //TODAS PNG
      mascotName: 'Naranjito',
      playersPhoto: 'assets/jugadores/82_italia.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Tango España',
      ballImage: 'assets/balon/82_tango_españa.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'El héroe inesperado',
          description: 'Italia, que tuvo un inicio de mundial titubeante, encontró a su salvador en Paolo Rossi. Con un triplete espectacular en la final contra Alemania, Rossi resurgió de las críticas para llevar a su equipo a la gloria. Su actuación no solo le dio la Copa del Mundo a Italia, sino que también lo convirtió en una leyenda del fútbol.',
          imageUrl: 'assets/momentos/82_hattrick.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 1986
    WorldCup(
      year: 1986,
      hostCountry: 'Mexico',
      hostFlag: 'assets/banderas/mexico.png', //TODAS PNG
      champion: 'Argentina',
      championFlag: 'assets/banderas/argentina.png', //TODAS PNG
      championEmblem: 'assets/seleccion/argentina.png', //TODAS PNG
      officialPoster: 'assets/poster/86_mexico.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/86_pique.png', //TODAS PNG
      mascotName: 'Pique',
      playersPhoto: 'assets/jugadores/86_argentina.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Azteca',
      ballImage: 'assets/balon/86_azteca.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'La "Mano de Dios"',
          description: 'En un partido contra Inglaterra, Diego Maradona dejó su huella para siempre con dos momentos icónicos. El primero, conocido como "La Mano de Dios", fue un gol marcado con la mano que el árbitro validó. El segundo fue un golazo que se convirtió en "el gol del siglo", donde Maradona eludió a medio equipo rival. Un partido que definió su genialidad y su lado polémico.',
          imageUrl: 'assets/momentos/86_manodedios.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 1990
    WorldCup(
      year: 1990,
      hostCountry: 'Italia',
      hostFlag: 'assets/banderas/italia.png', //TODAS PNG
      champion: 'Alemania',
      championFlag: 'assets/banderas/alemania.png', //TODAS PNG
      championEmblem: 'assets/seleccion/alemania.png', //TODAS PNG
      officialPoster: 'assets/poster/90_italia.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/90_ciao.png', //TODAS PNG
      mascotName: 'Ciao',
      playersPhoto: 'assets/jugadores/90_alemania.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Etrusco Unico',
      ballImage: 'assets/balon/90_etrusco.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'El grito de la cebra',
          description: 'Un humilde equipo de Camerún, apodado "Los Leones Indomables", dio una de las mayores sorpresas en la historia de los mundiales al derrotar 1-0 a Argentina, el campeón defensor y uno de los grandes favoritos. Este triunfo no solo conmocionó al mundo, sino que también inició un camino espectacular para los africanos en el torneo.',
          imageUrl: 'assets/momentos/90_camerun.jpeg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 1994
    WorldCup(
      year: 1994,
      hostCountry: 'Estados Unidos',
      hostFlag: 'assets/banderas/eua.png', //TODAS PNG
      champion: 'Brasil',
      championFlag: 'assets/banderas/brasil.png', //TODAS PNG
      championEmblem: 'assets/seleccion/brasil.png', //TODAS PNG
      officialPoster: 'assets/poster/94_eua.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/94_striker.png', //TODAS PNG
      mascotName: 'Striker',
      playersPhoto: 'assets/jugadores/94_brasil.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Questra',
      ballImage: 'assets/balon/94_questra.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'El hombre que murió de pie',
          description: 'La final entre Italia y Brasil se decidió en la tanda de penales. Todo dependía de Roberto Baggio, la gran figura de Italia en el torneo, para mantener vivas las esperanzas de su país. Sin embargo, su tiro se fue por encima del travesaño, un momento que simbolizó una de las finales más dramáticas de la historia y el final trágico para una de las estrellas más brillantes de ese mundial.',
          imageUrl: 'assets/momentos/94_baggio.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 1998
    WorldCup(
      year: 1998,
      hostCountry: 'Francia',
      hostFlag: 'assets/banderas/francia.png', //TODAS PNG
      champion: 'Francia',
      championFlag: 'assets/banderas/francia.png', //TODAS PNG
      championEmblem: 'assets/seleccion/francia.png', //TODAS PNG
      officialPoster: 'assets/poster/98_francia.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/98_footix.png', //TODAS PNG
      mascotName: 'Footix',
      playersPhoto: 'assets/jugadores/98_francia.webp', //MAYORIA JPG PERO VARIA
      ballName: 'Tricolore',
      ballImage: 'assets/balon/98_tricolore.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'El golpe de oro',
          description: 'El fútbol mundial vio su primer "gol de oro" en la historia de los mundiales. En los octavos de final, Francia y Paraguay se enfrentaron en un duelo apretado. Laurent Blanc, defensor francés, anotó el gol decisivo en tiempo extra, un gol que significó la victoria para Francia y la primera vez que esta regla definía un partido en una Copa del Mundo.',
          imageUrl: 'assets/momentos/98_goldeoro.png', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 2002
    WorldCup(
      year: 2002,
      hostCountry: 'Corea - Japón',
      hostFlag: 'assets/banderas/corea_japon.png', //TODAS PNG
      champion: 'Brasil',
      championFlag: 'assets/banderas/brasil.png', //TODAS PNG
      championEmblem: 'assets/seleccion/brasil.png', //TODAS PNG
      officialPoster: 'assets/poster/2002_corea.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/2002_spherix.png', //TODAS PNG
      mascotName: 'Spherix',
      playersPhoto: 'assets/jugadores/2002_brasil.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Fevernova',
      ballImage: 'assets/balon/2002_fevernova.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'La revancha del fenómeno',
          description: 'Después de sufrir una lesión que casi acaba con su carrera, Ronaldo resurgió de las cenizas. En la final, anotó los dos goles que le dieron a Brasil su quinto título mundial. Ronaldo no solo se consagró como el máximo goleador del torneo, sino que también completó una de las mayores historias de redención en la historia del deporte.',
          imageUrl: 'assets/momentos/2002_ronaldo.webp', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 2006
    WorldCup(
      year: 2006,
      hostCountry: 'Alemania',
      hostFlag: 'assets/banderas/alemania.png', //TODAS PNG
      champion: 'Italia',
      championFlag: 'assets/banderas/italia.png', //TODAS PNG
      championEmblem: 'assets/seleccion/italia.png', //TODAS PNG
      officialPoster: 'assets/poster/2006_alemania.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/2006_goleovi.png', //TODAS PNG
      mascotName: 'Goleo Vi',
      playersPhoto: 'assets/jugadores/2006_italia.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Teamgeist',
      ballImage: 'assets/balon/2006_teamgeist.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'La despedida de un genio',
          description: 'La final del 2006 estuvo marcada por un momento de drama y locura. Zinedine Zidane, el capitán de Francia, se despidió del fútbol de la forma más inesperada al dar un cabezazo al jugador italiano Marco Materazzi, lo que le valió una tarjeta roja. Este suceso cambió el rumbo del partido y fue el final de la carrera del talentoso mediocampista.',
          imageUrl: 'assets/momentos/2006_cabezazo.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 2010
    WorldCup(
      year: 2010,
      hostCountry: 'Sudáfrica',
      hostFlag: 'assets/banderas/sudafrica.png', //TODAS PNG
      champion: 'España',
      championFlag: 'assets/banderas/españa.png', //TODAS PNG
      championEmblem: 'assets/seleccion/españa.png', //TODAS PNG
      officialPoster: 'assets/poster/2010_sudafrica.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/2010_zakumi.png', //TODAS PNG
      mascotName: 'Zakumi',
      playersPhoto: 'assets/jugadores/2010_españa.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Jabulani',
      ballImage: 'assets/balon/2010_jabulani.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'El milagro de Casillas',
          description: 'En la final entre España y Holanda, un momento definió el rumbo del partido. Un pase filtrado dejó solo a Arjen Robben frente a Iker Casillas, en lo que parecía un gol seguro. Sin embargo, el portero español realizó una atajada milagrosa con la punta de su pie, un momento que permitió a su equipo mantenerse en el juego y finalmente, ganar el mundial.',
          imageUrl: 'assets/momentos/2010_casillas.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 2014
    WorldCup(
      year: 2014,
      hostCountry: 'Brasil',
      hostFlag: 'assets/banderas/brasil.png', //TODAS PNG
      champion: 'Alemania',
      championFlag: 'assets/banderas/alemania.png', //TODAS PNG
      championEmblem: 'assets/seleccion/alemania.png', //TODAS PNG
      officialPoster: 'assets/poster/2014_brasil.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/2014_fuleco.png', //TODAS PNG
      mascotName: 'Fuleco',
      playersPhoto: 'assets/jugadores/2014_alemania.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Brazuca',
      ballImage: 'assets/balon/2014_brazuca.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'El "Mineirazo"',
          description: 'Brasil, el anfitrión y gran favorito, vivió su peor pesadilla en la semifinal contra Alemania. En lo que se convirtió en una de las mayores humillaciones de la historia, Alemania no tuvo piedad y le propinó una goleada de 7-1 en el Estadio Mineirão. Este resultado no solo eliminó a Brasil, sino que también dejó una herida profunda en el orgullo nacional.',
          imageUrl: 'assets/momentos/2014_goleada.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 2018
    WorldCup(
      year: 2018,
      hostCountry: 'Rusia',
      hostFlag: 'assets/banderas/rusia.png', //TODAS PNG
      champion: 'Francia',
      championFlag: 'assets/banderas/francia.png', //TODAS PNG
      championEmblem: 'assets/seleccion/francia.png', //TODAS PNG
      officialPoster: 'assets/poster/2018_rusia.jpg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/2018_zabivaka.png', //TODAS PNG
      mascotName: 'Zabivaka',
      playersPhoto: 'assets/jugadores/2018_francia.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Telstar',
      ballImage: 'assets/balon/2018_telstar.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'La remontada del dragón',
          description: 'En uno de los partidos más emocionantes del torneo, Bélgica se enfrentó a Japón en los octavos de final. Con una desventaja de 2-0, los belgas lograron una increíble remontada en los últimos minutos del partido, anotando tres goles para sellar su pase a cuartos de final. Un partido que demostró que en el fútbol nunca hay que darse por vencido.',
          imageUrl: 'assets/momentos/2018_remontada.jpg', //TODAS jpg
        ),
      ],
    ),

    // Datos del Mundial de 2022
    WorldCup(
      year: 2022,
      hostCountry: 'Qatar',
      hostFlag: 'assets/banderas/qatar.png', //TODAS PNG
      champion: 'Argentina',
      championFlag: 'assets/banderas/argentina.png', //TODAS PNG
      championEmblem: 'assets/seleccion/argentina.png', //TODAS PNG
      officialPoster: 'assets/poster/2022_qatar.jpeg', //MAYORIA JPG PERO VARIA
      mascot: 'assets/mascotas/2022_laeeb.png', //TODAS PNG
      mascotName: "La'eeb",
      playersPhoto: 'assets/jugadores/2022_argentina.jpg', //MAYORIA JPG PERO VARIA
      ballName: 'Al Rihla',
      ballImage: 'assets/balon/2022_rihla.jpg', //TODAS jpg
      iconicMoments: [
        IconicMoment(
          title: 'El pie del héroe',
          description: 'En una de las finales más épicas de la historia, Argentina y Francia lucharon hasta el último segundo. En el tiempo extra, cuando el marcador estaba empatado, el francés Kolo Muani tuvo una oportunidad inmejorable para anotar, pero Emiliano "Dibu" Martínez, el portero argentino, atajó el tiro con su pie izquierdo en lo que se convirtió en una parada legendaria que salvó a su equipo de la derrota y los impulsó a ganar el mundial en la tanda de penales.',
          imageUrl: 'assets/momentos/2022_dibu.jpg', //TODAS jpg
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          // 1. La imagen de fondo que ocupa todo el espacio
          Image.asset(
            'assets/backgrounds/background1.jpg',
            fit: BoxFit.cover,
          ),
          // 2. El filtro de desenfoque (BackdropFilter)
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5), // Aumenta estos valores para más desenfoque
            child: Container(
              color: Colors.black.withOpacity(0.5), // Capa oscura para mejor contraste
            ),
          ),
          // 3. El contenido de la lista (ListView)
          ListView.builder(
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
        ],
      ),
    );
  }
}