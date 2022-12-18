import 'package:flutter/material.dart';
import 'appbar.dart';
import 'Bottom_nav.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: app_bar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            margin: EdgeInsets.fromLTRB(3, 0, 2, 2),
            child: Column(children: [
              Text(
                "About Us",
                style: TextStyle(
                  fontSize: 27,
                  color: Color.fromARGB(255, 243, 33, 33),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/images/data-areas.png",
              ),
              Container(
                margin: EdgeInsets.fromLTRB(3, 20, 2, 2),
                child: Text(
                  "Our reputation of trust is founded upon a highly skilled and seasoned team of insurance experts manning a network of 158 branches across Sri Lanka, utilizing a rich and perfected technical knowledge base that is unrivaled to date in Sri Lanka. Over the decades, we have progressed from strength to strength with diversified interests and investments across many key industries such as banking & finance, healthcare, power & energy, travel & leisure as well as construction & engineering.We have imbued a culture of financial independence in Sri Lanka, as we successfully continue the journey towards achieving our company’s overarching vision to be the trusted insurer to the nation.",
                  style: TextStyle(fontFamily: 'Raleway', fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "OUR TEAM",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 243, 142, 33)),
                ),
              ),
              bottomapp(
                  name: "Alex - Data Scientist",
                  image: "assets/images/avatar.jpg"),
              bottomapp(
                  name: "Mary - Analyst", image: "assets/images/avatar-1.jpg"),
              bottomapp(
                  name: "John - Tech Lead",
                  image: "assets/images/avatar-2.jpg"),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  Widget bottomapp({
    required String name,
    required String image,
  }) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Image.asset(
            image,
            height: 250,
            width: 250,
          ),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
