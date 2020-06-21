import 'package:Cosmos/screens/dashsubcat/connect.dart';
import 'package:Cosmos/screens/dashsubcat/contactus.dart';
import 'package:Cosmos/screens/dashsubcat/getstarted.dart';

import 'package:Cosmos/screens/dashsubcat/projects.dart';
import 'package:Cosmos/screens/dashsubcat/resources.dart';
import 'package:Cosmos/screens/dashsubcat/updates.dart';
import 'package:Cosmos/screens/dashsubcat/videos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dashsubcat/links/webview.dart';

class dashBoard extends StatefulWidget {
  @override
  _dashBoardState createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Hamburger(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarHeader(),
        ),
        body: Scrollbar(
          child: Column(children: <Widget>[
            Flexible(
              child: GridView.count(
                padding: EdgeInsets.fromLTRB(2, 50, 2, 20),
                crossAxisSpacing: 0,
                mainAxisSpacing: 30,
                crossAxisCount: 3,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => webviewclass(
                                  "https://cosmos.network/intro"))),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/astronaut-woman.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "What is\nCosmos?",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Projects())),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/project.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Cosmos\nProjects",
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GetStarted())),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/work.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Build on\nCosmos",
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => webviewclass(
                                  "https://cosmos.network/ecosystem"))),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/global.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ecosystem",
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => webviewclass(
                                  "https://forum.cosmos.network/t/list-of-cosmos-validators/2080"))),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/accuracy.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Validators",
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => webviewclass(
                                  "https://forum.cosmos.network/t/communities-cosmos-tendermint-support-chats-forums/2737"))),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/networking.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Community",
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    //  onPressed: ()=>{
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Updates())),

                    // },
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Updates())),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/news.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Latest\nUpdates",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Resources())),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/brain.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Resources",
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Connect())),
                    },
                    child: Column(
                      children: <Widget>[
                        SvgPicture.asset(
                          "images/mail.svg",
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Connect\nwith us",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  "COSMOS - The Internet Of Blockchains",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                )),
            Container(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  "Build with ♥ by Cosmos India",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ))
          ]),
        ));
  }
}

class Hamburger extends StatelessWidget {
  const Hamburger({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: Drawer(
            child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 38),
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
                          Expanded(
                              child: Text(
                            "About Cosmos India",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ))
                        ],
                      ),
                    )),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: FlatButton(
                    onPressed: () => {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs())),
                          Navigator.popAndPushNamed(context, 'contact'),
                        },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            "Contact Us (Cosmos India)",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ))
                        ],
                      ),
                    )),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: FlatButton(
                    onPressed: () => {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs())),
                          Navigator.popAndPushNamed(context, 'team'),
                        },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            "Developer Team",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.left,
                          ))
                        ],
                      ),
                    )),
              ),
              Divider(
                height: 2,
                color: Colors.black,
              ),
            ],
          ),
        )));
  }
}

class AppBarHeader extends StatelessWidget {
  const AppBarHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset(
        'images/logo_white.png',
        height: 20,
      ),
      // leading: FlatButton(onPressed: ()=>{
      //           Navigator.push(context, MaterialPageRoute(builder: (context)=>dashBoard()))}, child: Icon(Icons.home, color: Colors.white,)),
    );
  }
}
