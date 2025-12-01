import 'package:flutter/material.dart';
import 'package:smart_castle_hw2/feature/auth/model/user.dart';

class ProfilePage extends StatelessWidget {
  final User user;
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, size: 100, color: Colors.grey.shade500),
            ),
            SizedBox(height: 50),
            Text(
              "${user.firstName} ${user.secondName}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Divider(indent: 20, endIndent: 20),

            Text("email: ${user.email}", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
