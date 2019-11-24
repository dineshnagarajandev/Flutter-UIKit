import 'package:flutter/material.dart';

class ContainerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Equalent to UIView in iOS
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Component'),
      ),
      body: Center(
        child: Container(
        width: 48,
        height: 48,
        color: Colors.amber,
        margin: EdgeInsets.all(10),
      ),
      )
    );
  }
}