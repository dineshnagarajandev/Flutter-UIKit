import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Component'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.person),
                hintText: 'Enter user name',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.lock),
                hintText: 'Enter password'
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              alignment: Alignment.center,
              child: 
              // AbsorbPointer(
                // child: 
                RaisedButton(
                child: Text('Login'),
                onPressed: loginAction,
            ),
              // ) 
            )
          ],
        ),
      ),
    );
  }
}

loginAction() {
  print('Login action');
}