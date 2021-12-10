import 'package:flutter/material.dart';
import 'package:my_app/WhatsApp/Status/WhatsAppStatus.dart';
import 'package:my_app/WhatsApp/WhatsAppEnums.dart';
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
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: _searchNavBtnAction(),
            ),
            PopupMenuButton<TopNavbarMoreOption>(
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        value: TopNavbarMoreOption.newgroup,
                        child: Text('New group'),
                      ),
                      PopupMenuItem(
                        value: TopNavbarMoreOption.newbroadcast,
                        child: Text('New broadcast'),
                      ),
                      PopupMenuItem(
                        value: TopNavbarMoreOption.linkeddevices,
                        child: Text('Linked devices'),
                      ),
                      PopupMenuItem(
                        value: TopNavbarMoreOption.starredmessages,
                        child: Text('Starred messages'),
                      ),
                      PopupMenuItem(
                        value: TopNavbarMoreOption.payments,
                        child: Text('Payments'),
                      ),
                      PopupMenuItem(
                        value: TopNavbarMoreOption.settings,
                        child: Text('Settings'),
                      ),
                    ],
                onSelected: (selectedValue) {
                  switch (selectedValue) {
                    case TopNavbarMoreOption.newgroup:
                      print('New group');
                      break;
                    case TopNavbarMoreOption.newbroadcast:
                      print('New broadcast');
                      break;
                    case TopNavbarMoreOption.linkeddevices:
                      print('Linked devices');
                      break;
                    case TopNavbarMoreOption.starredmessages:
                      print('Starred messages');
                      break;
                    case TopNavbarMoreOption.payments:
                      print('Payments');
                      break;
                    case TopNavbarMoreOption.settings:
                      print('Settings');
                      break;
                    default:
                      print('Default');
                  }
                })
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
            WhatsAppStatus(),
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
