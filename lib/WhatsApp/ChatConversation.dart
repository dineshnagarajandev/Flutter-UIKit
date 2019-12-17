import 'package:flutter/material.dart';

class ChatConversation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.green,
          title: Container(
            padding: EdgeInsets.all(0),
            child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              Spacer(),
              GestureDetector(
                child: Text('User Name'),
                onTap: () {
                  print('User Name tapped');
                },
              ),
            ],
          ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                print('Video call');
              },
            ),
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                print('Call user');
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print('More option');
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Chat Conversation'),
        ));
  }
}
