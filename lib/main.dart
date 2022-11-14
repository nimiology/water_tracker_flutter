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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headline1: GoogleFonts.roboto(
                  fontSize: 27.5,
                  color: Color.fromRGBO(228, 228, 248, 1),
                  fontWeight: FontWeight.w500))),
      home: const HomeScreen(),
    );
  }
}
