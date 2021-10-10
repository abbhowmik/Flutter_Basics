import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 25),
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
                SizedBox(height: 10),
                ElevatedButton(
                  child: Text(
                    "Login",
                  ),
                  style: TextButton.styleFrom(),
                  onPressed: () => {print("Hi Ashis")},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
