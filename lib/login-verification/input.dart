import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String placeholder;

  Input(this.label, this.placeholder);

  @override
  Widget build(BuildContext context) {

    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: new BorderRadius.circular(10.0),
      borderSide: BorderSide(color: Color(0xFF1B1A34), width: 1.0),
    );

    return Container(
      padding: EdgeInsets.only(top: 25.0, left: 50.0, right: 50.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            alignment: Alignment.topLeft,
            child: Text(
              label,
              style: TextStyle(fontFamily: "Roboto-Bold", fontSize: 18.0),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: border,
              contentPadding: EdgeInsets.all(20.0),
              hintText: placeholder,
              border: border,
            ),
            style: new TextStyle(
              fontFamily: "Roboto-Regular",
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
