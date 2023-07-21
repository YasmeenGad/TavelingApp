import 'package:flutter/material.dart';
import 'package:travel/screens/home_screen.dart';

int _selectedIndex = 0;

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, size: 30), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline, size: 30),
                label: "Favourite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_city_outlined, size: 30),
                label: "City"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list, size: 30), label: "List"),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Color.fromARGB(255, 62, 70, 74),
          onTap: _onItemTapped),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
