import 'package:flutter/material.dart';

class Home7Screen extends StatelessWidget {
  const Home7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Game of The Years'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2022/11/04/05/50/city-7569067_960_720.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Tiluto Principal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Subtitulo principal'),
                    ],
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                const Text('41')
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              child: Text(
                  textAlign: TextAlign.justify,
                  'Flutter es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para crear aplicaciones para Google Fuchsia.​ Wikipedia'),
            ),
          )
        ],
      ),
    );
  }
}
