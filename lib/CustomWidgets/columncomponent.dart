import 'package:flutter/material.dart';

class ColumComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Component'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Text(
            'Colum one string',
            textAlign: TextAlign.center,
          )),
          Expanded(
            child: Text(
              'Colum two string',
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'Colum three string',
              textAlign: TextAlign.center,
            ),
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
