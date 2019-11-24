import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Component'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Text('Row one string', textAlign: TextAlign.center,)
          ),
          Expanded(
            child: Text('Row two string', textAlign: TextAlign.center,),
          ),
          Expanded(
            child: Text('Row three string', textAlign: TextAlign.center,),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: FlutterLogo(),
            ),
          )
        ],
      ),
    );
  }
}