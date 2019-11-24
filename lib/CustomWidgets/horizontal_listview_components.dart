import 'package:flutter/material.dart';

class HorizontalListViewComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal ListView Component'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.red,
          ),
          Container(
            width: 160,
            color: Colors.green,
          ),
          Container(
            width: 160,
            color: Colors.yellow,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.amber,
          ),
        ],
      ),
      ), 
    );
  }
}