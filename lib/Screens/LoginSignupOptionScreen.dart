import 'package:flutter/material.dart';

class loginsignupOptionScreen extends StatefulWidget {
  const loginsignupOptionScreen({Key key}) : super(key: key);

  @override
  _loginsignupOptionScreenState createState() =>
      _loginsignupOptionScreenState();
}

class _loginsignupOptionScreenState extends State<loginsignupOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 200),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hello There!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.orange[900],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Automatic identity verification which enable you to verify your identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                      child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black),
                    child: Center(
                      child: Text(
                        "Github",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
