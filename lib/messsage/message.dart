import 'package:flutter/material.dart';
//import 'package:dhaka/components/bottom_nav.dart';
//import 'package:dhaka/components/nav_drawer.dart';
import 'package:dhaka/constants.dart';
import 'package:dhaka/components/bottom_nav.dart';
import 'package:dhaka/components/nav_drawer.dart';
class Message extends StatefulWidget {
  // HomeScreen({Key key, this.title}) : super(key: key);
  // final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Message> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('AMARPORASHUNA'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Message body'),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      drawer: SidebarNav(),
      drawerEnableOpenDragGesture: false,
    );
  }
}
