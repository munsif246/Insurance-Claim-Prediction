import 'package:flutter/material.dart';

Widget buildimage() => Container(
      margin: EdgeInsets.fromLTRB(2, 30, 0, 5),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BI Reports",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 20, 20, 19)),
            ),
            Container(
              color: Color.fromARGB(255, 250, 249, 247),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Insurance-claim-analysis-2.png",
                      height: 180.0,
                      width: 280.0,
                    ),
                    Image.asset(
                      "assets/images/PowerBI_Insurance.png",
                      height: 140.0,
                      width: 200.0,
                    ),
                    Image.asset(
                      "assets/images/Insurance-claim-analysis.png",
                      height: 180.0,
                      width: 280.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
