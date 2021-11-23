import 'package:covinfo/about.dart';
import 'package:covinfo/user.dart';
import 'package:covinfo/manual.dart';
import 'package:covinfo/accept_policy.dart';
import 'package:covinfo/policy.dart';
import 'package:covinfo/splash.dart';
import 'package:covinfo/terms.dart';
import 'package:flutter/material.dart';
import 'diagnosis.dart';
import 'home.dart';
import 'accept_permission.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confinfo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ).copyWith(
          textTheme: GoogleFonts.openSansTextTheme(
        Theme.of(context).textTheme,
      )),
      home: Splash(),
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name!.split('/');

        if (pathElements[0] != '') {
          return null;
        }

        switch (pathElements[1]) {
          case 'home':
            return MaterialPageRoute(builder: (BuildContext context) => Home());
          case 'user':
            return MaterialPageRoute(builder: (BuildContext context) => User());
          case 'accept_policy':
            return MaterialPageRoute(
                builder: (BuildContext context) => AcceptPolicy());
          case 'accept_permission':
            return MaterialPageRoute(
                builder: (BuildContext context) => AcceptPermission());
          case 'manual':
            return MaterialPageRoute(
                builder: (BuildContext context) => Manual());
          case 'policy':
            return MaterialPageRoute(
                builder: (BuildContext context) => Policy());
          case 'terms':
            return MaterialPageRoute(
                builder: (BuildContext context) => Terms());
          case 'about':
            return MaterialPageRoute(
                builder: (BuildContext context) => About());
          case 'diagnosis':
            return MaterialPageRoute(
                builder: (BuildContext context) => Diagnosis());
          default:
            return null;
        }
      },
    );
  }
}
