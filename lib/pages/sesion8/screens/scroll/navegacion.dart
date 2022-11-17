
import 'package:flutter/material.dart';

class NavigacionScreen extends StatefulWidget {
  const NavigacionScreen({super.key});

  @override
  State<NavigacionScreen> createState() => _NavigacionScreenState();
}

class _NavigacionScreenState extends State<NavigacionScreen> {
  int _selectedIndex =0;
  static const List<Widget> WidgetOptions = [
    Text('1'),
    Text('2'),
    Text('3'),
    Text('4'),
    Text('5'),
  ];
  void _onItemTapped(int index){

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      )
    );
  }
}