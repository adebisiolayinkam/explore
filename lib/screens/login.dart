import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
 // const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffc2e0f9),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("Login",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
              ),
          SizedBox(height: 30),
          TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Enter User Name",
            labelText: "User Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          ),
          SizedBox(height: 30),
          TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 30),
         _buildButton(),
            SizedBox(height: 30),
         RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Need an account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                      text: "Register here",
                    style: TextStyle(color: Colors.black),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                     // navigate
                    })

                ]),
              ),
        ],
        ),
      ),
    );
  }

 Widget _buildButton() {
    return Container(
      height: 40,
      width: 120,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffff69b4),
      ),
      child: Text("Login"),
    );

 }
}

