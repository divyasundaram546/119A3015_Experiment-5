import 'package:flutter/material.dart';

class PrimaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Primary"),
        ),
        body: Center(
          child: GestureDetector(
            onLongPress: () {
              print('Box Clicked');
            },
            child: Container(
              height: 60.0,
              width: 120.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Text("Primary"),
              ),
            ),
          ),
        ));
  }
}
