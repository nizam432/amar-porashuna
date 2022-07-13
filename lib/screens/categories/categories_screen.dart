import 'package:flutter/material.dart';
import 'package:dhaka/components/nav_drawer.dart';
import 'package:dhaka/components/bottom_nav.dart';
class CategoriesScreen extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AMARPORASHUNA'),
      ),
      body: Center(
        child: Text('Profile Body'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      drawer: SidebarNav(),
      drawerEnableOpenDragGesture: false,
    );
  }
}
