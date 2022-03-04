import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swadeshibites/Module/authentication.dart';
import 'package:swadeshibites/Screens/RegisterScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swadeshibites/Screens/Screenmainhome.dart';
import 'package:swadeshibites/UI%20design/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool ischek = false;
  bool isSigningOut = false;
  bool isEmailvalid = true;
  RegExp regExpE = new RegExp(
    r'^[a-zA-Z@]+$',
  );

  bool ispasswordvalid = true;
  RegExp regExpP = new RegExp(
    r'^[a-zA-Za-z0-9. !@#$%^&*()]+$',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: info(),
    );
  }

  info() {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Email / phone"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Email - Phone',
                  errorText: isEmailvalid ? null : " Please enter email/phone",
                  focusColor: Colors.blue,
                ),
                onChanged: (value) {
                  if (regExpE.hasMatch(value)) {
                    isEmailvalid = true;
                  } else {
                    isEmailvalid = false;
                  }
                  setState(() {});
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Password"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' Password',
                  errorText: ispasswordvalid ? null : " Please enter pass",
                ),
                onChanged: (value) {
                  if (regExpE.hasMatch(value)) {
                    ispasswordvalid = true;
                  } else {
                    ispasswordvalid = false;
                  }
                  setState(() {});
                },
                obscureText: true,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Checkbox(
                value: ischek,
                onChanged: (bool value) {
                  setState(() {
                    ischek = value;
                  });
                },
              ),
              Text("Reminder Me"),
              Spacer(),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => registerScreen()));
                    },
                    child: Text("Register"),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),

          RoundedButton(
            text: "LOGIN",
            press: () {
              if (emailController.text.isEmpty) {
                print("Please enter Email");
                showtost("Enter email ");
              } else if (passwordController.text.isEmpty) {
                print("Please enter password");
                showtost("Enter password");
              } else {
                print("Done");
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Screenmainhome()));
                showtost("You Are Login...");
              }
            },
          ),
          SizedBox(
            width: 20,
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     setState(() {
          //       // showtost("Submit");
          //     });
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Color(0xFFFF8C00)),
          //   ),
          //   child: Text("Forgot Your Password"),
          // ),

          SizedBox(
            height: 20,
          ),
          // ElevatedButton(
          //   onPressed: () async {
          //     setState(() {});
          //     User user =
          //         await Authentication.signInWithGoogle(context: context);

          //     setState(() {});
          //     if (user != null) {
          //       Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(
          //           builder: (context) => Screenmainhome(),
          //         ),
          //       );
          //     }
          //     print("object");
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Color(0xFFFF8C00)),
          //   ),
          //   child: Text("Google signin"),
          // ),
        ],
      ),
    );
  }

  showtost(String name) {
    return Fluttertoast.showToast(
        fontSize: 10,
        msg: name,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.black,
        textColor: Colors.white);
  }
}
