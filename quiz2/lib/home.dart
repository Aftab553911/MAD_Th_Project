import 'package:flutter/material.dart';
import 'account.dart';
import 'useraccountscreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AccountScreen(),
          ],
        ),
      ),
    );
  }
}
