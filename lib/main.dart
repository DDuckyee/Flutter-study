import 'package:flutter/material.dart';
import 'package:study/MyAnimaedOpacity.dart';
import 'package:study/MyAnimatedContainer.dart';
import 'package:study/MyDrawer.dart';
import 'package:study/MyOrientation.dart';
import 'package:study/MySnackBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimationContainer'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimationOpacity'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('Drawer'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('SnackBar'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('Orientation'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (conetext) => MyOrientation()));
          },
        ),
      ],
    );
  }
}

