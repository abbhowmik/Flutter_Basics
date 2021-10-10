// ignore_for_file: prefer_const_constructors

import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset("assets/images/welcome.jpg", fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(23),
              child: Column(
                // ignore: duplicate_ignore
                children: [
                  TextFormField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 5),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(height: 18),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.HomeRoutes);
                      await Future.delayed(Duration(seconds: 1));
                      setState(() {
                        changeButton = false;
                      });
                    },
                    child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 52,
                        width: changeButton ? 50 : 110,
                        decoration: BoxDecoration(
                            borderRadius: changeButton
                                ? BorderRadius.circular(25)
                                : BorderRadius.circular(8),
                            color: changeButton ? Colors.green : Colors.cyan),
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                  ),
                  // ElevatedButton(
                  //   child: Text(
                  //     "Login",
                  //   ),
                  //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                  //   onPressed: () =>
                  //       {Navigator.pushNamed(context, MyRoutes.HomeRoutes)},
                  // ),
                  // SizedBox(height: 230),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
