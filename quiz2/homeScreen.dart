// lib/screens/home_screen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Add navigation to the second screen here
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
// In the SecondScreen
RaisedButton(
onPressed: () {
Navigator.pop(context);
},
child: Text('Back to Home Screen'),
),
