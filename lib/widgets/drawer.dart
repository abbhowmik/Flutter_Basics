// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations

    return Drawer(
      child: Container(
        color: Colors.cyan,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Ashis Bhowmik",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                accountEmail: Text(
                  "ashisauthorizer@.com",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Setting',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.text_quote,
                color: Colors.white,
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.hexagon,
                color: Colors.white,
              ),
              title: Text(
                'Help',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// child: ListView(
//   padding: EdgeInsets.zero,
//   children: const <Widget>[
//     DrawerHeader(
//       decoration: BoxDecoration(
//         color: Colors.cyan,
//       ),
//       child: Text(
//         'Drawer Header',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 24,
//         ),
//       ),
//     ),
//     ListTile(
//       leading: Icon(Icons.message),
//       title: Text('Messages'),
//     ),
//     ListTile(
//       leading: Icon(Icons.account_circle),
//       title: Text('Profile'),
//     ),
//     ListTile(
//       leading: Icon(Icons.settings),
//       title: Text('Settings'),
//     ),
//     ListTile(
//       leading: Icon(Icons.logout),
//       title: Text('Logout'),
//     ),
//   ],
// ),