import 'package:flutter/material.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({ Key key }) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.orange[300],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                // makeInput(label: "Email"),
                // makeInput(label: "Password",obsureText: true),
              ],
            ),
          )
        ],
      ),
    );
  }
}