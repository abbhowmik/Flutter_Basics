import 'package:firstapp/widgets/drawer.dart';
import 'package:flutter/material.dart';

// this comes from stl emmit
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Center(
        child: Container(
          child: Text("This is your own Flutter App created by Ashis o"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
