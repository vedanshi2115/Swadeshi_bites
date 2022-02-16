import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key key}) : super(key: key);

  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage('assets/image/logoswadeshibites.png'),
            ),
          ),
        ],
      ),
    );
  }
}
