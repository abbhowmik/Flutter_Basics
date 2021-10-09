import 'package:flutter/material.dart';
import './home_page.dart';

void main() {
  runApp(myApp());
}

// this is comes by typing stl(stateless widget)
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
