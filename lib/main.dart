import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(14, 11, 79, 0.8),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromRGBO(228, 228, 248, 1);
    return MaterialApp(
      title: 'Water Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
              fontSize: 27.5, color: textColor, fontWeight: FontWeight.w500),
          headline2: GoogleFonts.roboto(
              fontSize: 22.5, color: textColor, fontWeight: FontWeight.w500),
          headline5: GoogleFonts.roboto(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w500),
          headline6: GoogleFonts.roboto(
              fontSize: 15, color: textColor, fontWeight: FontWeight.w300),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
