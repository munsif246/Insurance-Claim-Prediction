import 'package:flutter/material.dart';
import 'appbar.dart';

class lifeins extends StatefulWidget {
  const lifeins({super.key});

  @override
  State<lifeins> createState() => _lifeinsState();
}

class _lifeinsState extends State<lifeins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: app_bar(),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(3, 20, 2, 2),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/blog-bann.png",
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/450.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
