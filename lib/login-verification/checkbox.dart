import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  final String title;
  final bool isChecked;

  CheckBox(this.title, this.isChecked);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 50.0, top: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Transform.scale(
              scale: 1.5,
              child: Checkbox(
                value: isChecked,
                activeColor: Color(0xFF1B1A34),
                onChanged: (bool value) {},
              ),
            )),
            Text(
              title,
              style: TextStyle(fontFamily: "Roboto-Regular", fontSize: 18.0),
            )
          ],
        ));
  }
}
