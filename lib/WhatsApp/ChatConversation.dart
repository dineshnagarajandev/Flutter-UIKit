import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatConversation extends StatefulWidget {
  const ChatConversation({Key key}) : super(key: key);

  @override
  _ChatConversationState createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  ScrollController chatListViewController = ScrollController();

  @override
  void initState() {
    // chatListViewController
    //     .jumpTo(chatListViewController.position.maxScrollExtent);
    super.initState();
  }

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
          child: Container(
            color: Colors.grey[300],
            child: ListView.separated(
                controller: chatListViewController,
                separatorBuilder: (context, index) {
                  return Container(
                    color: Colors.transparent,
                    height: 8,
                  );
                },
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? sentMessage(context)
                      : receivedMessage(context);
                }),
          ),
        ));
  }

  Widget sentMessage(context) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    "Flutter widget for creating different types of chat bubble.",
                    textAlign: TextAlign.right),
                SizedBox(
                  height: 8,
                ),
                Text(
                  DateFormat('HH:mm:ss').format(DateTime.now()),
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.grey),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }

  Widget receivedMessage(context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Flutter widget for creating different types of chat bubble. You can use different properties of this Widget and create beautiful Chat Bubbles.",
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  DateFormat('HH:mm:ss').format(DateTime.now()),
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.grey),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }
}
