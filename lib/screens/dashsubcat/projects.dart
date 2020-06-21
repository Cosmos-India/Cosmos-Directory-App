import 'package:flutter/material.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'links/webview.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
        padding: EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Cosmos Projects",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
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
                                      "https://cosmos.network/sdk"))),
                        },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: null,
                            child: SvgPicture.asset(
                              "images/sdk.svg",
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Cosmos SDK",
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
                                      "https://hub.cosmos.network/master/hub-overview/overview.html"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: null,
                          child: Image.asset(
                            'images/hub.png',
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Cosmos HUB",
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
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      webviewclass("https://tendermint.com/"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: null,
                          child: SvgPicture.asset(
                            "images/core.svg",
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Tendermint Core",
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
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => webviewclass(
                                      "https://github.com/cosmos/ics"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: null,
                          child: Image.asset(
                            'images/brand_dark.png',
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Interchain Standards",
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
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => webviewclass(
                                      "https://cosmos.network/goz"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: null,
                          child: SvgPicture.asset(
                            "images/game.svg",
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Game of Zones",
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

  // Future<void> _launchURL(int index) async {
  //   var url;
  //   switch (index) {
  //     case 1: url = "https://cosmos.network/sdk"; break;
  //     case 2: url = "https://hub.cosmos.network/master/hub-overview/overview.html"; break;
  //     case 3: url = "https://tendermint.com/"; break;
  //     case 4: url = "https://github.com/cosmos/ics"; break;
  //     case 5: url = "https://cosmos.network/goz"; break;

  //     default:
  //   }

  //   if (await canLaunch(url)) {
  //     await launch(
  //       url,
  //       forceWebView: true,
  //       enableJavaScript: true,
  //     );
  //   } else {
  //     print("couldn't lauunch");
  //     throw 'Could not launch $url';
  //   }
  // }

}
