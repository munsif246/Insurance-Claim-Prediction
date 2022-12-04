import 'package:flutter/material.dart';

Widget buildsearchbar() => Container(
      height: 80.0,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      padding: EdgeInsets.all(10.0),
      color: Color.fromARGB(255, 255, 255, 255),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: "search",
          filled: true,
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
