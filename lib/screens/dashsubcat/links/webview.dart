import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:Cosmos/screens/dash.dart';
import 'package:flutter/services.dart';

class webviewclass extends StatefulWidget {
  String url;
  webviewclass(this.url);

  @override
  _webviewclassState createState() => _webviewclassState();
}

class _webviewclassState extends State<webviewclass> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new WebviewScaffold(
        // appBar: PreferredSize(
        //         preferredSize: Size.fromHeight(50),
        //         child: AppBar(centerTitle: true,
        //         leading: Container(
        //           margin: EdgeInsets.zero,
        //           padding: EdgeInsets.zero,
        //           child: FlatButton(
        //             onPressed: ()=>{
        //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>dashBoard()))}, child: Icon(Icons.home, color: Colors.white, size: 25)),
        //         ),
        //       ),
        // ),
        // floatingActionButton: FloatingActionButton(elevation: 0.5, onPressed: ()=>{
        //                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dashBoard()))}, child:Image.asset('images/brand_dark.png', height: 50,),backgroundColor: Colors.white54),

        url: widget.url,
        // persistentFooterButtons: <Widget>[FloatingActionButton(elevation: 0.5, onPressed: ()=>{
        //                Navigator.push(context, MaterialPageRoute(builder: (context)=>dashBoard()))}, child:Image.asset('images/brand_dark.png', height: 50,),backgroundColor: Colors.white54),
        // ]
        bottomNavigationBar: Container(
            color: Color(0xff161931),
            child: FlatButton(
                color: Color(0xff161931),
                child: Icon(Icons.home, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                })),
        appCacheEnabled: true,
        hidden: true,
      ),
    );
  }
}
