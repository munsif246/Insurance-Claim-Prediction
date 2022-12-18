import 'package:flutter/material.dart';
import 'appbar.dart';

class leasing extends StatefulWidget {
  const leasing({super.key});

  @override
  State<leasing> createState() => _leasingState();
}

class _leasingState extends State<leasing> {
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
            Image.asset(
              "assets/images/leasing.jpg",
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Text(
                "A savings account is the easiest and the most versatile way to deposit your money in a financial institution. Each individual may have different purposes for having a savings account; building an egg nest for your future is one, maintaining a savings account for the convenience of online transactions is another. However, regardless of the expectation, it’s essential that everybody has at least one savings account and has in-depth knowledge about it. It could be overwhelming to choose what type of account you need or which financial institute to choose. Let’s break down what you need to know before opening a savings account.",
                style: TextStyle(fontSize: 15.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
