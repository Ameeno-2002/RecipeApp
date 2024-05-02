// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'welcomingscreen.dart'; // Import your WelcomeScreen widget from its file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(), // Set the home to your WelcomeScreen widget
    );
  }
}
