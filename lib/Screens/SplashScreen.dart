import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swadeshibites/Screens/LoginSignupOptionScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), callback);
  }

  callback() {
    Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(
            builder: (BuildContext context) => loginsignupOptionScreen()),
        (Route<dynamic> Route) => false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('assets/image/logoswadeshibites.png'),
        ),
      ),
    );
  }
}
