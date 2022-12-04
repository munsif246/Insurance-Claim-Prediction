import 'dart:ffi';

import 'package:flutter/material.dart';
import 'DropDown.dart';

class body_part extends StatefulWidget {
  const body_part({super.key});

  @override
  State<body_part> createState() => _body_partState();
}

class _body_partState extends State<body_part> {
  String? children;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(11.0),
        child: Container(
          child: Column(children: [
            textItem(name: "Age"),
            textItem(name: "Past Accidents :"),
            radioBut(name: "Children: ", value1: "Yes", value2: "No"),
            radioBut(name: "Gender: ", value1: "Male", value2: "Female"),
            radioBut(
                name: "Vehicle Year :",
                value1: "Before 2015",
                value2: "After 2015"),
            radioBut(name: "Vehicle Type: ", value1: "Sedan", value2: "Sports"),
            radioBut(name: "Married: ", value1: "Yes", value2: "No"),
          ]),
        ));
  }

  Widget radioBut({
    required String name,
    required String value1,
    required String value2,
  }) {
    return Container(
      child: Row(
        children: [
          Text(name),
          SizedBox(
            width: 200.0,
            child: Column(children: [
              RadioListTile(
                title: Text(
                  value1,
                  style: TextStyle(fontSize: 10.0),
                ),
                value: value1,
                groupValue: children,
                onChanged: (value) {
                  setState(() {
                    children = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text(
                  value2,
                  style: TextStyle(fontSize: 10.0),
                ),
                value: value2,
                groupValue: children,
                onChanged: (value) {
                  setState(() {
                    children = value.toString();
                  });
                },
              ),
            ]),
          )
        ],
      ),
    );
  }

  Widget textItem({
    required String name,
  }) {
    return Container(
      child: Row(
        children: [
          Text(name),
          SizedBox(
            width: 200.0,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: name,
                hintText: 'Enter ' + name,
              ),
            ),
          )
        ],
      ),
    );
  }
}
