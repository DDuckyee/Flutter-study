import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Builder(builder: (context) => Center(
        child: RaisedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('메일이 삭제 되었습니다'),
              action: SnackBarAction(label: '취소', onPressed: () {
                //눌렀을 때 처리
              }),
            );

            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: Text('Show SnackBar'),
        ),
      )),
    );
  }
}
