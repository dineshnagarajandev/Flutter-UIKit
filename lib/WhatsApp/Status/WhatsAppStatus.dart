import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/chatConversation.dart';

class WhatsAppStatus extends StatefulWidget {
  const WhatsAppStatus({Key key}) : super(key: key);

  @override
  _WhatsAppStatusState createState() => _WhatsAppStatusState();
}

class _WhatsAppStatusState extends State<WhatsAppStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Status'),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.create, color: Colors.grey[800]),
            backgroundColor: Colors.grey[300],
            onPressed: () {},
          ),
          Divider(
            color: Colors.white,
          ),
          FloatingActionButton(
            child: Icon(Icons.camera_alt),
            backgroundColor: Colors.green,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
