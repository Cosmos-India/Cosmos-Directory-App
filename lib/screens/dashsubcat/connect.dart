import 'package:flutter/material.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Connect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          color: Color(0xff161931),
          child: FlatButton(
              color: Color(0xff161931),
              child: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              })),
      endDrawer: Hamburger(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarHeader(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 1,
                clipBehavior: Clip.hardEdge,
                child: FlatButton(
                    onPressed: () => _launchURL(1),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'images/discord.png',
                                height: 50,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Community Chat",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 1,
                clipBehavior: Clip.hardEdge,
                child: FlatButton(
                    onPressed: () => _launchURL(2),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'images/discourse.png',
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Official Forum",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 1,
                clipBehavior: Clip.hardEdge,
                child: FlatButton(
                    onPressed: () => _launchURL(3),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'images/reddit.png',
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Reddit",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 1,
                clipBehavior: Clip.hardEdge,
                child: FlatButton(
                    onPressed: () => _launchURL(4),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'images/github.png',
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "GitHub",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 1,
                clipBehavior: Clip.hardEdge,
                child: FlatButton(
                    onPressed: () => _launchURL(5),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'images/twitter.png',
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Twitter",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                elevation: 1,
                clipBehavior: Clip.hardEdge,
                child: FlatButton(
                    onPressed: () => _launchURL(6),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'images/youtube.png',
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "YouTube",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(int index) async {
    var url;
    bool webview = false;
    switch (index) {
      case 1:
        url = "https://discord.com/invite/cr7N47p";
        break;
      case 2:
        url = "https://forum.cosmos.network/";
        webview = true;
        break;
      case 3:
        url = "https://www.reddit.com/r/cosmosnetwork/";
        break;
      case 4:
        url = "https://github.com/cosmos/cosmos-sdk";
        webview = true;
        break;
      case 5:
        url = "https://twitter.com/cosmos";
        break;
      case 6:
        url = "https://www.youtube.com/channel/UC8HFOUdnMnpoWmQMgeKoB3A";
        break;

      default:
    }

    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: webview,
        enableJavaScript: true,
      );
    } else {
      print("couldn't lauunch");
      throw 'Could not launch $url';
    }
  }
}
