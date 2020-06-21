import 'package:flutter/material.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Build a Plasma MVP Chain with Cosmos SDK | Aditya Sripal",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
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
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "Intro to the Cosmos Network | Sunny Aggarwal",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(3),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Sign in and Send Tokens",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(4),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Delegate",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(5),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Redelegate",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(6),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Undelegate (Unbond) from a Validator",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(7),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Create a Governance Proposal",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(8),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Deposit into a Pending Proposal",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(9),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Vote on a Governance Proposal",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(10),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "How to Build a Blockchain App with Cosmos SDK | Jack Zampolin",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(11),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "Introduction to Cosmos Governance | Gautier Marin",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(12),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "Code with us - Scavenger Hunt Tutorial with Billy Rennekamp",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(13),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "CosmWasm - Editing a Smart Contract Tutorial Part 2",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(14),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "CosmWasm - Editing a Smart Contract Tutorial Part 1",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  elevation: 1,
                  clipBehavior: Clip.hardEdge,
                  child: FlatButton(
                      onPressed: () => _launchURL(15),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesome.youtube,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Text(
                              "Cosmos Nameservice Tutorial",
                              style: TextStyle(fontSize: 15),
                            ))
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                //  Card(
                //   margin: EdgeInsets.symmetric(horizontal: 20),
                //   elevation: 1,
                //   clipBehavior: Clip.hardEdge,
                //   child: FlatButton(
                //     onPressed: ()=>_launchURL(16),
                //     child: Container(
                //       child: Row(
                //         children: <Widget>[
                //           Icon(FontAwesome.youtube, size: 40,),
                //           SizedBox(width: 20,),
                //           Expanded(child: Text("", style: TextStyle(fontSize: 15),))

                //         ],
                //       ),
                //     )
                //   ),
                // ),
                //  SizedBox(height: 20,),
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
      case 1:
        url = "https://www.youtube.com/watch?v=ItZDuzLr9Ms";
        break;
      case 2:
        url = "https://www.youtube.com/watch?v=XAetXKTikLM";
        break;
      case 3:
        url = "https://www.youtube.com/watch?v=WEvxV6ekNxI";
        break;
      case 4:
        url = "https://www.youtube.com/watch?v=u-1RRdJcNjg";
        break;
      case 5:
        url = "https://www.youtube.com/watch?v=tRX-lJ_mlyk";
        break;
      case 6:
        url = "https://www.youtube.com/watch?v=bbjYkYhCfYM";
        break;
      case 7:
        url = "https://www.youtube.com/watch?v=jD-kSIlIflU";
        break;
      case 8:
        url = "https://www.youtube.com/watch?v=oSCI0E7T_cQ";
        break;
      case 9:
        url = "https://www.youtube.com/watch?v=xMWKqXQVf7s";
        break;
      case 10:
        url = "https://www.youtube.com/watch?v=pyAmxlzVdqM&t=2s";
        break;
      case 11:
        url = "https://www.youtube.com/watch?v=DZ-7d9HCEzc&t=1s";
        break;
      case 12:
        url = "https://www.youtube.com/watch?v=GfZjnMchKX0";
        break;
      case 13:
        url = "https://www.youtube.com/watch?v=15wQ5avYRnM";
        break;
      case 14:
        url = "https://www.youtube.com/watch?v=3JC-dK4MyVc";
        break;
      case 15:
        url = "https://www.youtube.com/watch?v=4sxYL_Ek5Ek";
        break;
      case 16:
        url = "";
        break;
      case 17:
        url = "";
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
