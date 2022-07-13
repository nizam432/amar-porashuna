import 'package:flutter/material.dart';
import 'package:dhaka/components/bottom_nav.dart';
import 'package:dhaka/components/nav_drawer.dart';
import 'package:dhaka/screens/home/components/body.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:  Text('Amar Porashuna'),
     ),
     backgroundColor: Colors.white,
     body: const Body(),
     bottomNavigationBar: const MyBottomNavBar(),
     drawer: SidebarNav(),
     drawerEnableOpenDragGesture: false,
   );
  }
}
