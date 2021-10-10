import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
              "Welcome",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(23),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(
                    child: Text(
                      "Login",
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    onPressed: () =>
                        {Navigator.pushNamed(context, MyRoutes.HomeRoutes)},
                  ),
                  SizedBox(height: 230),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
