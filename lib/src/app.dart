import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_madrid/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Madrid',
      theme: ThemeData(
        textTheme: TextTheme(
            display3: GoogleFonts.balooBhai(
                textStyle: textTheme.display3
                    .copyWith(color: Color(0xff03569B), wordSpacing: 20)),
            body1: GoogleFonts.montserrat(
                textStyle: textTheme.body1
                    .copyWith(color: Colors.black.withOpacity(0.7)))),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}