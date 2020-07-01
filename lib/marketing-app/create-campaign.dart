import 'package:flutter/material.dart';
import "report.dart";

class CreateCampaign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: new BorderRadius.circular(40.0),
      borderSide: BorderSide(color: Color(0xFFE6E9F1), width: 2.0),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: height / 15, right: 30),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  child: Icon(Icons.close),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF4F6FE),
                  focusedBorder: border,
                  contentPadding: EdgeInsets.all(25.0),
                  hintText: "Search",
                  prefixIcon: Container(
                    child: Image.asset("assets/icon/search.png", scale: 2.5),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  hintStyle: TextStyle(
                      color: Color(0xFF202842),
                      fontFamily: 'Muli-Regular',
                      fontSize: 18.0),
                  border: border,
                  enabledBorder: border,
                ),
                style: new TextStyle(
                  fontFamily: "Roboto-Regular",
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 40.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Report()),
                  );
                },
                child: Text(
                  "Audience",
                  style: TextStyle(fontFamily: "Muli-Regular", fontSize: 18.0),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 40.0),
                child: GestureDetector(
                    child: Text(
                      "Reports",
                      style:
                          TextStyle(fontFamily: "Muli-Regular", fontSize: 18.0),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Report()),
                      );
                    })),
            Container(
              width: width / 1.5,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF7C7ED5),
                    blurRadius: 30.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      0.0,
                      15.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: RaisedButton(
                color: Color(0xFF7C7ED5),
                onPressed: () {},
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text('Create campaign',
                    style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: "Muli-Regular",
                        color: Color(0xFFFFFFFF))),
              ),
            ),
            Divider(
              color: Color(0xFFDCDDED),
              height: height / 6,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            Container(
              height: 100,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.only(left: 35, right: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/icon/photo.jpg")),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Ray Floyd",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Muli-Bold",
                                    fontSize: 20.0),
                              ),
                            ),
                            Container(
                              height: 28,
                              width: 45,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              child: Text(
                                "PRO",
                                style: TextStyle(
                                    fontFamily: "Muli-Bold",
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "View account",
                            style: TextStyle(
                              fontFamily: "Muli-Regular",
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: height / 10,
          child: GestureDetector(
            onTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "assets/icon/log-out.png",
                    scale: 2.5,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Log out",
                    style:
                        TextStyle(fontFamily: "Muli-Regular", fontSize: 18.0),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
