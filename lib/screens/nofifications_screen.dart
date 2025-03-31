import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifications = [
      "Your coffee order has been placed!",
      "New flavors available: Hazelnut and Caramel!",
      "Don't miss our happy hour from 3 PM to 5 PM!",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Color(0xFF212325),
        foregroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              notifications[index],
              style: TextStyle(color: Colors.white), 
            ),
            leading: Icon(
              Icons.notifications,
              color: Colors.orange, 
            ),
            onTap: () {
              
            },
          );
        },
      ),
      backgroundColor: Color(
        0xFF212325,
      ), 
    );
  }
}
