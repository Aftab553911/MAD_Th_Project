import 'package:flutter/material.dart';
import 'package:midtermexam/screen3.dart';

class AccountScreen extends StatelessWidget {
  // List of friends' names and emails (you can replace this with your actual data)
  final List<Map<String, String?>> friends = [
    {'name': 'Hafiz Yasir', 'email': 'hafiz@hotmail.com'},
    {'name': 'Ali Haider', 'email': 'hadi@hotmail.com'},
    {'name': 'Saqib Nasir', 'email': 'saqib@hotmail.com'},
    {'name': 'Abdullah Mazher', 'email': 'abd@yahoo.com'},
    {'name': 'Syed Fraz', 'email': 'syedfraz@gmail.com'},
    {'name': 'Umair Saleem', 'email': 'umair@hotmail.com'},
    {'name': 'Azan Ali', 'email': 'azan@hotmail.com'},
    {'name': 'Abdul Mateen', 'email': 'abd_m@hotmail.com'},
    {'name': 'Hamza Maqbool', 'email': 'hamza@hotmail.com'},
    {'name': 'Umar Ghous', 'email': 'umarghous@hotmail.com'},

    // Add more friends as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
      ),
      body: Column(
        children: [
          // List of friends with account icons, names, and emails
          Column(
            children: friends.map((friend) {
              return ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                  color: Colors.blue,
                ),
                title: Text(friend['name'] ?? ''),
                subtitle: Text(
                  friend['email'] ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfileScreen(name: 'Abdullah Mazher', introduction : 'Hi i am a professional Flutter Developer . Hire me For your projects', followers: 1000, following: 2000, isFollowing: true) // Replace 'HomeScreen()' with your actual class name for the home screen
                    ),
                  );
                  // Define what happens when a friend is tapped
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
