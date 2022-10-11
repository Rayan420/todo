import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/Screens/task_screen.dart';
import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        // When navigating to the "/second" route, build the TaskScreen widget.
        '/second': (context) => const TaskScreen(),
      },
      theme: ThemeData(textTheme: GoogleFonts.nunitoSansTextTheme(
        Theme.of(context).textTheme
      ),
      ),
      debugShowCheckedModeBanner: false,
     home: Home(),
    );
  }
}
