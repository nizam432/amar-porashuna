import 'package:flutter/material.dart';

import '../../components/bottom_nav.dart';
import '../../components/nav_drawer.dart';

class SchoolScreen extends StatefulWidget {
  const SchoolScreen({Key? key}) : super(key: key);

  @override
  State<SchoolScreen> createState() => _SchoolScreenState();
}

class _SchoolScreenState extends State<SchoolScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Amar Porashuna'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('School Screen'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      drawer: SidebarNav(),
      drawerEnableOpenDragGesture: false,
    );
  }
}

