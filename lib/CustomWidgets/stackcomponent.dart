import 'package:flutter/material.dart';

class StackComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Component'),
      ),
      body: Container(
        alignment: Alignment.center,
        // color: Colors.black,
        child: Stack(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.green,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.yellow,
          )
        ],
      ),
      )
    );
  }
}