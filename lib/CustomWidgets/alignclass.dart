import 'package:flutter/material.dart';

class AlignClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aligh widget'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60,
              child: Align(
                alignment: Alignment.center,
                child: Text('Center widget'),
              ),
            ),
            Container(
              color: Colors.red,
              height: 60,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('Top Center'),
              ),
            ),
            Container(
              color: Colors.grey,
              height: 60,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text('Bottom Center'),
              ),
            ),
            Container(
              color: Colors.lightGreen,
              height: 60,
              child: Align(
                alignment: Alignment.topRight,
                child: Text('Top Right'),
              ),
            ),
            Container(
              color: Colors.lightBlue,
              height: 60,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Top left'),
              ),
            ),
            Container(
              color: Colors.redAccent,
              height: 60,
              child: Align(
                alignment: Alignment.centerRight,
                child: FlutterLogo(
                  size: 30,
                ),
              ),
            )
          ],
        ));
  }
}
