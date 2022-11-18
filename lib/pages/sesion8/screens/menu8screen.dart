
import 'package:ejercicio/pages/sesion8/screens/scroll/navegacion.dart';
import 'package:ejercicio/widgets.dart';
import 'package:flutter/material.dart';

class Menu8Screen extends StatelessWidget {
  const Menu8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Sesion 8'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Scroll',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavegacionScreen(),
                    ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}