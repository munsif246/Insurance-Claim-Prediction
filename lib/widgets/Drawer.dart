import 'package:flutter/material.dart';
import 'AboutUs.dart';
import 'payment_reload_pg.dart';
import 'Login.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "USER 9905",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "97*****V",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/login-icon.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 62, 179, 173),
            ),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUs()),
              );
            },
          ),

          //Divider(),
          ListTile(
            leading: Icon(Icons.add_to_home_screen),
            title: Text('Transaction history'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.handshake_outlined),
            title: Text('Help a friend'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.analytics),
            title: Text('Analytics'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (payment_pg())),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.payment_outlined),
            title: Text('Payments History'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
