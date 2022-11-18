import 'package:ejercicio/pages/sesion8/screens/scroll/homepage.dart';
import 'package:flutter/material.dart';

class NavegacionScreen extends StatefulWidget {
  const NavegacionScreen({super.key});

  @override
  State<NavegacionScreen> createState() => _NavegacionScreenState();
}

class _NavegacionScreenState extends State<NavegacionScreen> {
  
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOption = [
    //Text('1'),
    HomePage(),
    Text('2'),
    Text('3'),
    Text('4'),
    Text('5'),
  ];

  void _onIntemTapped(int index){

    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        _widgetOption.elementAt(_selectedIndex)
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_display_outlined,
            size: 35,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onIntemTapped,
      ),
    );
  }
}