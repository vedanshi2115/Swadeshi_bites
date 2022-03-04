import 'package:flutter/material.dart';
import 'package:swadeshibites/Screens/LoginScreen.dart';
import 'package:swadeshibites/Screens/LoginScreen.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key key}) : super(key: key);

  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: info(),
    );
  }

  info() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Register",
                  textScaleFactor: 1.5,
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Name',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email - Adress",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Phone",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Conform Password",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFFF8C00)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("Register"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
