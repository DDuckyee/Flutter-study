import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
            ),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(
            random.nextInt(300), random.nextInt(300), random.nextInt(300), 1);
            _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
