import 'package:flutter/material.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'links/webview.dart';

class ContactUs extends StatelessWidget {
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
                                'images/twitter.png',
                                height: 40,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Twitter",
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
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                              onPressed: null,
                              child: Icon(
                                FontAwesome.telegram,
                                color: Colors.black,
                                size: 40,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Telegram Community",
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
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => webviewclass(
                                      "https://cosmosindia.network/"))),
                        },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                              onPressed: null,
                              child: Image.asset(
                                'images/brand_dark.png',
                                height: 40,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Website",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(int index) async {
    var url;
    switch (index) {
      case 1:
        url = "https://twitter.com/cosmos";
        break;
      case 2:
        url = "https://t.me/cosmosindia";
        break;
      case 3:
        url = "https://cosmosindia.network/";
        break;
      default:
    }

    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
        enableJavaScript: true,
      );
    } else {
      print("couldn't lauunch");
      throw 'Could not launch $url';
    }
  }
}
