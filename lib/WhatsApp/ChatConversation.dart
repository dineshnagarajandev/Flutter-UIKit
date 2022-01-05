import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/WhatsApp/contactinfo.dart';

class ChatConversation extends StatefulWidget {
  const ChatConversation({Key key}) : super(key: key);

  @override
  _ChatConversationState createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  ScrollController chatListViewController = ScrollController();
  TextEditingController chatTextFieldController = TextEditingController();

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactInfo()));
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
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
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
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return (index % 2 == 0)
                        ? sentMessage(context)
                        : receivedMessage(context);
                  }),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  InkWell(
                    onTap: () {
                      print("Add media");
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    controller: chatTextFieldController,
                    onChanged: (value) {
                      print(value);
                      setState(() {});
                    },
                  )),
                  (chatTextFieldController.text.isEmpty)
                      ? InkWell(
                          onTap: () {
                            print("Add media");
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            child: Icon(
                              Icons.money_outlined,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      : Container(),
                  (chatTextFieldController.text.isEmpty)
                      ? InkWell(
                          onTap: () {
                            print("Add media");
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      : Container(),
                  (chatTextFieldController.text.isEmpty)
                      ? InkWell(
                          onTap: () {
                            print("Add audio");
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration:
                                BoxDecoration(color: Colors.transparent),
                            child: Icon(
                              Icons.mic,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      : Container(),
                  SizedBox(
                    width: 16,
                  )
                ],
              ),
            ),
          )
        ]));
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
