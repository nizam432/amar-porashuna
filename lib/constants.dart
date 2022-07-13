import 'package:dhaka/screens/business/business_screen.dart';
import 'package:dhaka/screens/categories/categories_screen.dart';
import 'package:dhaka/screens/school/school_screen.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff096534);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const kDefaultPadding = 20.0;

List<Widget Function(BuildContext)> routes = [
  (context) => CategoriesScreen(),
  (context) => BusinessScreen(),
  (context) => SchoolScreen(),
];
