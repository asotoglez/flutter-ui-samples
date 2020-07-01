import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
import 'checkbox.dart';
import 'verification.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: height / 10),
              child: Text(
                "Login",
                style: TextStyle(fontFamily: "Roboto-Bold", fontSize: 24.0),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: height / 45),
              child: Text(
                "Create an account",
                style: TextStyle(
                    fontFamily: "Roboto-Regular",
                    fontSize: 16.0,
                    color: Color(0xFF505DD1)),
              ),
            ),
            Input("Username", "Enter your username"),
            Input("Password", "Enter your password"),
            Container(
              width: width,
              padding: EdgeInsets.only(top: 25.0, left: 50.0, right: 50.0),
              child: RaisedButton(
                color: Color(0xFF1B1A34),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Verification()),
                  );
                },
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text('Log In',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Roboto-Regular",
                        color: Color(0xFFFFFFFF))),
              ),
            ),
            CheckBox("Keep me looged in", true),
          ],
        ),
      ) ,
      bottomNavigationBar: Container(
        height: height / 12,
        margin: EdgeInsets.only(bottom: 30.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text("Forgot password?",
                  style: TextStyle(
                      fontFamily: "Roboto-Regular",
                      fontSize: 16.0,
                      color: Color(0xFF505DD1))),
            ),
            Text(
              "©2001 - 2020 All Right Reserved",
              style: TextStyle(fontFamily: "Roboto-Regular", fontSize: 14.0),
            ),
          ],
        )),
      ),
    );
  }
}
