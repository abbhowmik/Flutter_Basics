import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

// this is comes by typing stl(stateless widget)
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          '/': (context) => LoginPage(),
          '/login': (context) => HomePage(),
        });
  }
}
