import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key key}) : super(key: key);

  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Contact Info"),
        ),
        body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(children: [
              Container(
                height: 320,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Image.network(
                  "https://via.placeholder.com/320",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.only(top: 16, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "+91 9876543210",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                        ],
                      )),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.message,
                          color: Colors.blue[800],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.video_call,
                          color: Colors.blue[800],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.call,
                          color: Colors.blue[800],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ]),
              ),
              Divider(),
              listComponentWithImage(
                  Icons.image, Colors.blue, "Media, Links, and Docs",
                  subTitle: "None"),
              listComponentWithImage(
                  Icons.star, Colors.yellow[700], "Media, Links, and Docs",
                  subTitle: "None"),
              listComponentWithImage(
                Icons.search,
                Colors.orange,
                "Chat Search",
              ),
              customGreySpacer(),
              listComponentWithImage(Icons.volume_up, Colors.green, "Mute",
                  subTitle: "No"),
              listComponentWithImage(
                  Icons.wallpaper, Colors.pink[400], "Wallpaper & Sound",
                  subTitle: ""),
              listComponentWithImage(
                  Icons.download, Colors.yellow[700], "Save to Camera Roll",
                  subTitle: "Default"),
              customGreySpacer(),
              listComponentWithImage(
                  Icons.timer, Colors.blue[700], "Disappearing Messages",
                  subTitle: "Off"),
              listComponentWithImage(Icons.lock, Colors.blue[700], "Encryption",
                  title2:
                      "Messages and calls are end-to-end encrypted. \nTap to verify."),
              customGreySpacer(),
              listComponentWithImage(
                  Icons.person, Colors.grey, "Contact Details"),
              customGreySpacer(),
              listComponentOnlyText("Share Contact", Colors.blue),
              listComponentOnlyText("Export Chat", Colors.blue),
              listComponentOnlyText("Clear Chat", Colors.red),
              customGreySpacer(),
              listComponentOnlyText("Block Contact", Colors.red),
              listComponentOnlyText("Report Contact", Colors.red),
              customGreySpacer(),
            ])));
  }

  Widget listComponentOnlyText(String title, Color titleColor) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, color: titleColor),
          ),
          Divider()
        ],
      ),
    );
  }

  Widget listComponentWithImage(IconData image, Color imageColor, String title,
      {String subTitle, String title2}) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: imageColor, borderRadius: BorderRadius.circular(6)),
              child: Icon(
                image,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                (title2 != null)
                    ? Text(
                        title2,
                        maxLines: 2,
                      )
                    : Container(),
              ],
            ),
            Spacer(),
            (subTitle != null)
                ? Text(
                    subTitle,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                : Container(),
            SizedBox(
              width: 8,
            ),
            SizedBox(
                child: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.grey,
            )),
            SizedBox(
              width: 16,
            )
          ],
        ),
        Divider()
      ],
    );
  }

  Widget customGreySpacer() {
    return Column(
      children: [
        Container(
          height: 20,
          decoration: BoxDecoration(color: Colors.grey[300]),
        ),
        Divider()
      ],
    );
  }
}
