import 'package:firstapp/pages/otp_login_page.dart';
import 'package:firstapp/utils/routes.dart';
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
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: '/',
        routes: {
          // ignore: prefer_const_constructors
          '/': (context) => OtpLoginPage(),
          MyRoutes.HomeRoutes: (context) => HomePage(),
          MyRoutes.LoginRoutes: (context) => LoginPage(),
        });
  }
}
