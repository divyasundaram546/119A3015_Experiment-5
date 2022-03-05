import 'package:flutter/material.dart';

class MailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Inbox"),
        ),
      ),
    );
  }
}
