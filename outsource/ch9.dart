import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView with Items and Logos'),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6, // Total number of items (3 airplanes + 3 cars)
      itemBuilder: (context, index) {
        if (index < 3) {
          // Airplanes for the first three items
          return ListItem(
            name: 'Airplane',
            icon: Icons.airplanemode_active,
            color: Colors.blue,
          );
        } else {
          // Cars for the next items
          return ListItem(
            name: 'Car',
            icon: Icons.directions_car,
            color: Colors.green,
          );
        }
      },
    );
  }
}

class ListItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  ListItem({required this.name, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        // You can add onTap behavior here.
        print('Tapped on $name');
      },
    );
  }
}
