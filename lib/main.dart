import 'package:covinfo/about.dart';
import 'package:covinfo/manual.dart';
import 'package:covinfo/policy.dart';
import 'package:covinfo/splash.dart';
import 'package:covinfo/terms.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'permission.dart';
import 'policy.dart';
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
      home: About(),
    );
  }
}
