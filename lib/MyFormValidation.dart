import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyFormValidation'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: <Widget>[ //<Widget> 있든 말든 실행됨
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return '공백은 허용되지 않습니다';
                };
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    // valid
                    Scaffold.of(_formKey.currentContext)
                        .showSnackBar(SnackBar(content: Text('처리중')));
                  };
                },
                child: Text('완료'),
              ),
            ),
          ],
      )),
    );
  }
}
