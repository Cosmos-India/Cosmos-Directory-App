import 'package:flutter/material.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'links/webview.dart';

class Resources extends StatefulWidget {
  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
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
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => webviewclass(
                                      "https://cosmos.network/resources/whitepaper"))),
                        },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: null,
                            child: SvgPicture.asset(
                              "images/paper.svg",
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Whitepaper",
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
                                  builder: (context) =>
                                      webviewclass("https://cosmos.network/"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: SvgPicture.asset(
                              "images/globe.svg",
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Official Website",
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
                                      "https://blog.cosmos.network/"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: SvgPicture.asset(
                              "images/blogging.svg",
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Blog",
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
                                      "https://cosmos.network/newsletters"))),
                        },
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: null,
                            child: SvgPicture.asset(
                              "images/newsletter.svg",
                              height: 50,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Hub & Spoke\nNewsletter",
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
  //     case 1: url = "https://cosmos.network/resources/whitepaper"; break;
  //     case 2: url = "https://cosmos.network/"; break;
  //     case 3: url = "https://blog.cosmos.network/"; break;
  //     case 4: url = "https://cosmos.network/newsletters"; break;

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
