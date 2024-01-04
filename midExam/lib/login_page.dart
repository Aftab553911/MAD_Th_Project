import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Email field
            Text(
              'Email',

            ),

            // Password field
            Text(
              'Password',

            ),

            // Login button
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to home screen
              },
              child: Text('Login'),
            ),

            // Register link
            TextButton(
              onPressed: () {
                // TODO: Navigate to register page
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
