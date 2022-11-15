import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_tracker_flutter/screens/home_screen.dart';

void main() {
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
                  fontSize: 27.5,
                  color: textColor,
                  fontWeight: FontWeight.w500),
              headline2: GoogleFonts.roboto(
                  fontSize: 22.5,
                  color: textColor,
              fontWeight: FontWeight.w500)
          ),
      ),
      home: const HomeScreen(),
    );
  }
}
