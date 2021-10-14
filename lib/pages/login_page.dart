import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  // ontop functionality
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.HomeRoutes);
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(height: 30),
              Image.asset("assets/images/welcome.jpg", fit: BoxFit.cover),
              // ignore: prefer_const_constructors
              SizedBox(height: 10),
              Text(
                "Welcome $name",
                // ignore: prefer_const_constructors
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Username !';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value == null || value.length < 4) {
                          return "Password length can't be less than 4";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 18),
                    Material(
                      borderRadius:
                          BorderRadius.circular(changeButton ? 25 : 25),
                      color: Colors.green,
                      child: InkWell(
                        onTap: () => {moveToHome(context)},
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 52,
                            width: changeButton ? 50 : 110,
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
                    ),
                    // ElevatedButton(
                    //   child: Text(
                    //     "Login",
                    //   ),
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    //   onPressed: () =>
                    //       {Navigator.pushNamed(context, MyRoutes.HomeRoutes)},
                    // ),
                    SizedBox(height: 230),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
