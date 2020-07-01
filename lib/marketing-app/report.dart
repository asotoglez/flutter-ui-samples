import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget createItem(int index) {
      String header = "";
      String subheader = "";
      Color color;
      Color textColor;
      switch (index) {
        case 0:
          {
            header = "943";
            subheader = "Opened";
          }
          break;
        case 1:
          {
            header = "173";
            subheader = "Clicked";
            color = Color(0xFF7C7ED5);
            textColor = Colors.white;
          }
          break;
        case 2:
          {
            header = "7";
            subheader = "Bounced";
          }
          break;
        case 3:
          {
            header = "16";
            subheader = "Unsubscribed";
          }
          break;
      }

      return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: Color(0xFFE6E9F1),
              width: 0.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Text(
                header,
                style: TextStyle(
                    color: textColor,
                    fontFamily: "Muli-Bold",
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
            ),
            Container(
              child: Text(
                subheader,
                style: TextStyle(
                    color: textColor,
                    fontFamily: "Muli-Regular",
                    fontSize: 18.0),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: Container(
                margin: EdgeInsets.only(top: 50, left: 25),
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back,
                  size: 25.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Apr. 20 - 24",
                style: TextStyle(
                    fontFamily: "Muli-Bold",
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Switch report",
                style: TextStyle(
                  fontFamily: "Muli-SemiBold",
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: Color(0xFF7C7ED5),
                ),
              ),
            ),
            Container(
                height: height / 2.5,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: width / (height / 3)),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: createItem(index),
                        onTap: () {},
                      );
                    })),
            Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 45),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Successful deliveries",
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'Muli-Regular'),
                    ),
                    Text(
                      "2,468",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Muli-Bold',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 20, left: 45),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Total opens",
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'Muli-Regular'),
                    ),
                    Text(
                      "1,322",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Muli-Bold',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
