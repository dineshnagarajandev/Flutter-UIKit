import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/contactinfo.dart';

class CreateNewChat extends StatefulWidget {
  const CreateNewChat({Key key}) : super(key: key);

  @override
  _CreateNewChatState createState() => _CreateNewChatState();
}

class _CreateNewChatState extends State<CreateNewChat> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("New Conversation"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
                  height: 8,
                ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return (index != 0)
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactInfo()));
                      },
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.only(left: 8),
                        color: Colors.grey[100],
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://via.placeholder.com/150'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 16, bottom: 8, right: 8, left: 8),
                              child: Column(
                                children: [
                                  Text("User Name"),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("User status")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(
                      height: 80,
                      padding: EdgeInsets.only(left: 8),
                      color: Colors.grey[100],
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.person_add),
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "New Group",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              )),
                        ],
                      ),
                    );
            }));
  }
}
