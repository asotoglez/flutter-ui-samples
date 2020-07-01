import 'package:flutter/material.dart';
import 'login-verification/login.dart';
import 'marketing-app/create-campaign.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark));
    return MaterialApp(
      title: 'Flutter UI Samples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter UI Samples'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    ListTile makeListTile(String title, String level,  Color color, Function tap) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.black))),
        child: Icon(Icons.menu, color: Colors.black),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: 0.5,
                    valueColor: AlwaysStoppedAnimation(color),
                ),
              )),
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(level,
                    style: TextStyle(color: Colors.black))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0),
      onTap: tap,
    );

    Card makeCard(String title, String level,  Color color, Function tap) => Card(
      elevation: 3,
      margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
     // shape: RoundedRectangleBorder(
      //  borderRadius: BorderRadius.circular(15.0),
      //),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: makeListTile(title, level, color, tap),
      ),
    );

    Widget createItem (int index) {
      String title = "";
      String level = "";
      Color color = Colors.transparent;
      Function tap = () {};

      switch(index) {
        case 0: {
        title = "Login & Verification";
        level = "Easy";
        color = Colors.green;
        tap = () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        };
      }
        break;
        case 1: {
          title = "Marketing App";
          level = "Easy";
          color = Colors.green;
          tap = () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateCampaign()),
            );
          };
        }
        break;
      }
      return makeCard(title, level, color, tap);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Flutter UI Samples",style: TextStyle(
              fontFamily: 'Roboto-Regular'
            ),),
            floating: false,
            pinned: true,
            snap: false,
            flexibleSpace: Placeholder(),
            expandedHeight: 150,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => createItem(index),
              childCount: 2
            ),
          ),
        ],
      ),
    );
  }
}
