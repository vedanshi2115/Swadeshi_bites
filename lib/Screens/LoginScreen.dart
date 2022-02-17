import 'package:flutter/material.dart';
import 'package:swadeshibites/Screens/RegisterScreen.dart';
import 'package:swadeshibites/UI%20design/already_have_an_account_acheck.dart';
import 'package:swadeshibites/UI%20design/rounded_button.dart';
import 'package:swadeshibites/UI%20design/rounded_input_field.dart';
import 'package:swadeshibites/UI%20design/rounded_password_field.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Image(
            image: AssetImage('assets/image/logoswadeshibites.png'),
          ),
          Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          AlreadyHaveAnAccountCheck(
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
        ],
      ),
    );
  }
}
