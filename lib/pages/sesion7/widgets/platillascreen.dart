import 'dart:ui';

import 'package:flutter/material.dart';

class PlantillaScreen extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? content;

  const PlantillaScreen(
      {super.key, this.img, this.title, this.subtitle, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 350,
          child: Image.network(
            '$img',
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
                  children: [
                    
                    Text(
                      '$title',
                      style: const TextStyle(fontWeight: FontWeight.bold, 
                      fontSize: 20,
                      ),
                    ),
                    Text('$subtitle',
                    style: const TextStyle( 
                    ),),
                  ],
                ),
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Text('9/10')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            child: Text(
              '$content',
              textAlign: TextAlign.justify,
            ),
          ),
        ),
         const SizedBox(
                height: 30,
              ),
        MaterialButton(
                  minWidth: 100.0,
                  height: 40.0,
                  onPressed: () {},
                  color: Colors.lightBlue,
                  child: const Text('Vote',
                  style: TextStyle(color: Colors.white),
                  ),
                )
      ],
    ); 
  }
}
