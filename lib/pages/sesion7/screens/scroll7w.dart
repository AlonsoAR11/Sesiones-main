
import 'package:ejercicio/pages/sesion7/widgets/platillascreen.dart';
import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollScreen7 extends StatefulWidget {
  const ScrollScreen7({super.key});

  @override
  State<ScrollScreen7> createState() => _ScrollScreen7State();
}

class _ScrollScreen7State extends State<ScrollScreen7> {

  late Controller controller;

  final List<dynamic> data = [
    {
      'img':
          'https://www.gamespot.com/a/uploads/scale_landscape/43/434805/4049989-6015812490-a-pla.jpg',
      'title': 'A Plague Tale Requiem',
      'subtitle': 'Nominado al Mejor Juego del Año',
      'content':
          'Plague Tale: Requiem es un videojuego de acción-aventura y sigilo desarrollado por Asobo Studio y distribuido por Focus Entertainment.'
    },
    {
      'img':
          'https://image.api.playstation.com/vulcan/img/rnd/202201/2122/eb6r5OAYaQ7mLcpmo7P46Dzj.png',
      'title': 'Elden Ring',
      'subtitle': 'Nominado al Mejor Juego del Año',
      'content':
          'Elden Ring es un videojuego de rol de acción desarrollado por FromSoftware y publicado por Bandai Namco Entertainment.".'
    },
    {
      'img':
          'https://static1-es.millenium.gg/articles/1/50/03/1/@/274290-gowr2-orig-1-article_cover_bd-1.jpg',
      'title': 'God of War Ragnarök',
      'subtitle': 'Nominado al Mejor Juego del Año',
      'content':
          'God of War: Ragnarök es un videojuego de acción y aventuras desarrollado por Santa Monica Studio y publicado por Sony Interactive Entertainment (SIE). '
    },
    {
      'img':
          'https://media.wired.com/photos/621e76d000c61db612b05fd8/master/pass/Games-Horizon-Forbidden-West-Review-top.jpg',
      'title': 'Horizon Forbidden West',
      'subtitle': 'Nominado al Mejor Juego del Año',
      'content':
          'Horizon Forbidden West (también Horizon II por el pequeño número en el logo) es un videojuego de rol de acción, aventura y mundo abierto desarrollado por Guerrilla Games y distribuido por Sony Interactive Entertainment, exclusivamente para PlayStation 4 y PlayStation 5.'
    },
    {
      'img':
          'https://as01.epimg.net/meristation/imagenes/2022/07/25/noticias/1658755778_176959_1658755899_noticia_normal.jpg',
      'title': 'Stray',
      'subtitle': 'Nominado al Mejor Juego del Año',
      'content':
          'Stray es un juego de aventuras desarrollado por BlueTwelve Studio y publicado por Annapurna Interactive.'
    },
    {
      'img':
          'https://media.revistagq.com/photos/62bece0377928575faec237c/16:9/w_2560%2Cc_limit/xenoblade-chronicles-3.jpeg',
      'title': 'Xenoblade Chronicles 3',
      'subtitle': 'Nominado al Mejor Juego del Año',
      'content':
          'Xenoblade Chronicles 3 es un videojuego de rol desarrollado por Monolith Soft y publicado por Nintendo para la consola de videojuegos Nintendo Switch.'
    },
  ];
  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Game of The Year'),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: data.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext context, int index) {

          final dato = data[index];
          return PlantillaScreen(
            img: dato['img'],
            title: dato['title'],
            subtitle: dato['subtitle'],
            content: dato['content'],
          );
        }
      ),
    );
  }
}


