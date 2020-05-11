import 'package:flutter/material.dart';
import 'package:study/MyAnimaedOpacity.dart';
import 'package:study/MyAnimatedContainer.dart';
import 'package:study/MyDrawer.dart';
import 'package:study/MyFormValidation.dart';
import 'package:study/MyOrientation.dart';
import 'package:study/MyPageView.dart';
import 'package:study/MySnackBar.dart';
import 'package:study/MySwipeToDismiss.dart';
import 'package:study/MyTabController.dart';

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
        accentColor: Colors.orange,
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
        ListTile(
          title: Text('TabController'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabController()));
          },
        ),
        ListTile(
          title: Text('FormValidation'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyFormValidation()));
          },
        ),
        ListTile(
          title: Text('SwipeToDismiss'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySwipeToDismiss()));
          },
        ),
        ListTile(
          title: Text('PageView'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyPageView()));
          },
        ),
      ],
    );
  }
}

