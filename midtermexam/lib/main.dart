import 'package:flutter/material.dart';
import 'screen1.dart'; // Import your HomeScreen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PasswordResetScreen(), // Use your HomeScreen widget as the initial screen
    );
  }
}