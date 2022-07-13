import 'package:flutter/material.dart';
import 'package:dhaka/constants.dart';
import 'package:dhaka/screens/categories/categories_screen.dart';
import 'package:dhaka/messsage/message.dart';
import 'package:dhaka/account/create_account.dart';

class SidebarNav extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Message()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Create Account'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateAccount()));
            },
          ),

        ],
      ),
    );
  }
}
