import 'package:flutter/material.dart';
import 'package:gym_schedule/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Healthy life App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "josefin",
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}
