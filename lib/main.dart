import 'package:flutter/material.dart';
import 'package:dhaka/screens/home/home_screen.dart';
import 'package:dhaka/screens/categories/categories_screen.dart';

import 'constants.dart';

void main() {
  runApp(DhakaApp());
}

class DhakaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amar Porashuna',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
