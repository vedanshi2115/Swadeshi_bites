import 'package:flutter/material.dart';
import 'package:swadeshibites/Screens/LoginScreen.dart';
import 'package:swadeshibites/Screens/RegisterScreen.dart';
import 'package:swadeshibites/UI%20design/rounded_button.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/image/logoswadeshibites.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hello There!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black,
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

              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return loginScreen();
                      },
                    ),
                  );
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: Colors.amber,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return registerScreen();
                      },
                    ),
                  );
                },
              ),

              // children: <Widget>[
              //   Expanded(
              //       child: Container(
              //     height: 50,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(50),
              //         color: Colors.blue),
              //     child: Center(
              //       child: Text(
              //         "Login",
              //         style: TextStyle(
              //             color: Colors.white, fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   )),
              //   SizedBox(
              //     width: 30,
              //   ),
              //   Expanded(
              //       child: Container(
              //     height: 50,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.black,
              //     ),
              //     child: Center(
              //       child: Text(
              //         "Sign up",
              //         style: TextStyle(
              //             color: Colors.white, fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   )),
            ],
          ),
        ),
      ),
    );
  }
}
