import 'package:flutter/material.dart';

import '../../components/bottom_nav.dart';
import '../../components/nav_drawer.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Amar Porashuna'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Business Screen'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      drawer: SidebarNav(),
      drawerEnableOpenDragGesture: false,
    );
  }
}
