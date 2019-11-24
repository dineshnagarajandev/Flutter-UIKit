import 'package:flutter/material.dart';

class ColoumComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coloum Component'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Text('Coloum one string', textAlign: TextAlign.center,)
          ),
          Expanded(
            child: Text('Coloum two string', textAlign: TextAlign.center,),
          ),
          Expanded(
            child: Text('Coloum three string', textAlign: TextAlign.center,),
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