import 'package:flutter/material.dart';
import 'widgets/appbar.dart';
import 'widgets/body.dart';
import 'widgets/Form.dart';
import 'package:http/http.dart';
import 'widgets/Top_image.dart';
import 'widgets/Drawer.dart';
import 'widgets/Bottom_nav.dart';
import 'widgets/Inter.dart';
import 'widgets/searchbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: app_bar(),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    buildsearchbar(),
                    buildimage(),
                    international(),
                    MyForm(),
                  ],
                ),
              ],
            ),
          ),
          drawer: Navbar(),
          bottomNavigationBar: BottomNav(),
        ));
  }
}
