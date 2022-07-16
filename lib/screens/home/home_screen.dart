import 'package:dhaka/components/nav_drawer.dart';
import 'package:flutter/material.dart';

import './components/body.dart';
import '../business/business_screen.dart';
import '../school/school_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _pages = <Widget>[
    Body(),
    BusinessScreen(),
    SchoolScreen(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amar Porashuna'),
      ),
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        selectedItemColor: Colors.amber[800],
      ),
      drawer: SidebarNav(),
      drawerEnableOpenDragGesture: false,
    );
  }
}
