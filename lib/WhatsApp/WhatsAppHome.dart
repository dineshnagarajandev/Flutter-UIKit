import 'package:flutter/material.dart';
import 'WhatsAppChat.dart';

class WhatsAppHome extends StatefulWidget {
  _WhatsAppHome createState() => _WhatsAppHome();
}

class _WhatsAppHome extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'WhatsApp',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: _searchNavBtnAction(),
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: _moreNavBtnAction(),
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('Camera'),
            whatsAppListContainer(context),
            whatsAppStatuContainer(),
            whatsAppCallsContainer(context)
          ],
        ),
      ),
    );
  }

  // ToDo: define search functionality
  _searchNavBtnAction() {
    print('Search navigation button tapped');
  }

  // ToDO: define option for more
  _moreNavBtnAction() {
    print('More button tapped');
  }
}
