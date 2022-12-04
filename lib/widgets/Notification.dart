import 'package:flutter/material.dart';
import 'Bottom_nav.dart';

class notification_pg extends StatelessWidget {
  static const routeName = 'notification_pg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 212, 18, 212),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
