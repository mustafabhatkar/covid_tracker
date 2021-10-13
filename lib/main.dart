import 'package:covid_tracker/base_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
        textTheme: GoogleFonts.robotoTextTheme(TextTheme(
            headline6:
                TextStyle(fontSize: 20.0, color: Colors.white.withOpacity(0.8)),
            subtitle2: TextStyle(
                fontSize: 14.0, color: Colors.white.withOpacity(0.7)))),
        primaryColor: const Color(0xff2c2424),
        cardColor: const Color(0xff2c2424),
        backgroundColor: const Color(0xff171717),
         colorScheme: theme.colorScheme.copyWith(secondary: const Color(0xfff00916))
      ),
      home: const BasePage(),
    );
  }
}
