import 'package:flutter/material.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'links/webview.dart';

class Developer extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                    onPressed: () => _launchURL(2),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      trailing: Icon(
                        FontAwesome.linkedin_square,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            "App Developer: ",
                            style: TextStyle(fontSize: 15),
                          ),
                          RichText(
                            text: new TextSpan(
                                style: TextStyle(
                                    fontFamily: 'Metropolis',
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: " Toshik Langade",
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: null,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Content Curation:",
                              style: TextStyle(fontSize: 15),
                            ),
                            RichText(
                              text: new TextSpan(
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: " Arifa Raj",
                                    ),
                                  ]),
                            ),
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
                      onPressed: null,
                      child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          // child: Text(
                          //   "Cosmos India Co-founders:\nAbhitej Singh\nDeepanshu Tripathi\nHitesh Bhardwaj\nMayur Relekar\nTushar Aggarwal",
                          //   style: TextStyle(fontSize: 15),
                          // ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Cosmos India Co-founders:",
                                style: TextStyle(fontSize: 15),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                child: RichText(
                                  text: new TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                          text: "Abhitej Singh",
                                        ),
                                        TextSpan(
                                          text: ", Deepanshu Tripathi",
                                        ),
                                        TextSpan(
                                          text: ", Hitesh Bhardwaj",
                                        ),
                                        TextSpan(
                                          text: ", Mayur Relekar",
                                        ),
                                        TextSpan(
                                          text: ", Tushar Aggarwal",
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ))),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: null,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Special Mention:",
                              style: TextStyle(fontSize: 15),
                            ),
                            RichText(
                              text: new TextSpan(
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: " Tendermint Inc.",
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(int index) async {
    var url;
    switch (index) {
      // case 1:
      //   url = "https://twitter.com/cosmos";
      //   break;
      case 2:
        url = "https://www.linkedin.com/in/ltosh9802/";
        break;
      // case 3:
      //   url = "https://cosmosindia.network/";
      //   break;
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
