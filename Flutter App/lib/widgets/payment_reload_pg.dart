import 'package:flutter/material.dart';
import 'Bottom_nav.dart';
import 'Top_image.dart';

class payment_pg extends StatelessWidget {
  static const routeName = 'payment_pg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Analytics",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 18, 205, 212),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              buildimage(),
              Text(
                "Real Time Analytics",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/Bar-graph-representing.png",
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/health-care.jpg",
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
