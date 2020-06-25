import 'package:flutter/material.dart';
import 'checkbox.dart';

enum VerificationChannel { email, sms }

class Verification extends StatefulWidget {
  Verification({Key key}) : super(key: key);

  @override
  _VerificationWidgetState createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<Verification> {
  VerificationChannel _channel = VerificationChannel.sms;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: height / 10),
              child: Text(
                "Login Verification",
                style: TextStyle(fontFamily: "Roboto-Bold", fontSize: 24.0),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin:
                  EdgeInsets.only(top: height / 45, left: 50.0, right: 50.0),
              child: Text(
                "To continue loggin in we need you to complete one of the following:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Roboto-Regular",
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin:
                  EdgeInsets.only(top: height / 25, left: 30.0, right: 50.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                      contentPadding: EdgeInsets.only(top: 10.0),
                      title: const Text(
                        'Verification code via email',
                        style: TextStyle(
                            fontFamily: "Roboto-Regular", fontSize: 18),
                      ),
                      leading: Transform.scale(
                        scale: 1.5,
                        alignment: Alignment.centerLeft,
                        child: Radio(
                          activeColor: Color(0xFF1B1A34),
                          value: VerificationChannel.email,
                          groupValue: _channel,
                          onChanged: (VerificationChannel value) {
                            setState(() {
                              _channel = value;
                            });
                          },
                        ),
                      )),
                  ListTile(
                      contentPadding: EdgeInsets.only(top: 10.0),
                      title: const Text(
                        'Verification code via SMS',
                        style: TextStyle(
                            fontFamily: "Roboto-Regular", fontSize: 18),
                      ),
                      leading: Transform.scale(
                        scale: 1.5,
                        alignment: Alignment.centerLeft,
                        child: Radio(
                          activeColor: Color(0xFF1B1A34),
                          value: VerificationChannel.sms,
                          groupValue: _channel,
                          onChanged: (VerificationChannel value) {
                            setState(() {
                              _channel = value;
                            });
                          },
                        ),
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin:
                  EdgeInsets.only(top: height / 250, left: 90.0, right: 60.0),
              child: Text(
                "We’ll send a code to your mobile phone that can enter to verify your identity.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Roboto-Regular",
                  fontSize: 14.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 35.0, left: 90.0, right: 50.0),
              child: RaisedButton(
                color: Color(0xFF1B1A34),
                onPressed: () {},
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text('Send SMS Code',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Roboto-Regular",
                        color: Color(0xFFFFFFFF))),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: height / 10, left: 0.0, right: 50.0),
              child: CheckBox("Remember this device", true),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin:
                  EdgeInsets.only(top: height / 250, left: 90.0, right: 60.0),
              child: Text(
                "Don’t select this option if you’re using a public computer",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Roboto-Regular",
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height / 12,
        margin: EdgeInsets.only(bottom: 30.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Text("Return to Login",
                      style: TextStyle(
                          fontFamily: "Roboto-Regular",
                          fontSize: 16.0,
                          color: Color(0xFF505DD1))),
                ))
          ],
        )),
      ),
    );
  }
}
