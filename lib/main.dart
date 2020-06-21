import 'package:Cosmos/screens/dashsubcat/contactus.dart';
import 'package:Cosmos/screens/dashsubcat/developer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/dash.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'dash',
        theme: ThemeData(
            backgroundColor: Colors.white,
            fontFamily: 'Metropolis',
            appBarTheme: AppBarTheme(color: Color(0xff161931))),
        routes: {
          'dash': (context) => dashBoard(),
        },
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case 'contact':
              return CupertinoPageRoute(
                  builder: (_) => ContactUs(), settings: settings);
            case 'team':
              return CupertinoPageRoute(
                  builder: (_) => Developer(), settings: settings);
          }
        });
  }
}
