import 'package:flutter/material.dart';

class PrimaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primary"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Primary"),
        ),
      ),
    );
  }
}
