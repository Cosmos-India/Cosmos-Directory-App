import 'package:Cosmos/screens/dashsubcat/videos.dart';
import 'package:flutter/material.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'links/webview.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
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
                  "Build on Cosmos",
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
                                      "https://cosmos.network/developers"))),
                        },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: null,
                            child: SvgPicture.asset(
                              "images/data.svg",
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Developers Portal",
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
                                      "https://tutorials.cosmos.network/"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: Image.asset(
                              'images/space.png',
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Cosmos SDK Tutorial",
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Videos()))
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: null,
                          child: SvgPicture.asset(
                            "images/video-tutorial.svg",
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Video Tutorial",
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
                              'images/download.png',
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
        url = "https://cosmos.network/developers";
        break;
      case 2:
        url = "https://tutorials.cosmos.network/";
        break;
      case 3:
        url = " ";
        break;
      case 4:
        url = "https://www.github.com/cosmos/sdk-tutorials";
        break;

      default:
    }

    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      print("couldn't lauunch");
      throw 'Could not launch $url';
    }
  }
}
