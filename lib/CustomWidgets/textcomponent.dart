import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Component'),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        // mainAxisSize:  MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
          padding: EdgeInsets.all(10)
        ),
          Text('On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 18,
            ),
            maxLines: 2,
            overflow: TextOverflow.clip,
        ),
        // Divider(
        //   height: 20,
        //   color: Colors.greenAccent,
        // ),
        Padding(
          padding: EdgeInsets.all(10)
        ),
        Text('Dinesh Nagarajan', 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          )
        ),
        Padding(
          padding: EdgeInsets.all(10),
        ),
        RichText(
          text: TextSpan(
            text: 'Hello ',
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: <TextSpan>[
              TextSpan(text: 'bold', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24)),
              TextSpan(text: ' World!')
            ],
          ),
        )
        ],
      ),
    );
  }

  void navigateBack(BuildContext context) {
    print('Add navigating to back button');
    Navigator.pop(context);
  }
}